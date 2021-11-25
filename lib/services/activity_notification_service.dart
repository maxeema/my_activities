import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/generated/l10n.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

const _kInitializationSettings = InitializationSettings(
  android: AndroidInitializationSettings('@mipmap/ic_launcher'),
  //TODO iOS support
  /*iOS: initializationSettingsIOS*/
);

const _kAndroidChannelId = 'max_my_activities_id';
const _kAndroidChannelName = 'Max Timer App Notification Channel';

late final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void _selectNotification(String? payload) async {
  debugPrint('notification payload, activity id: $payload');
}

bool get _canWorkOnThisRuntime => defaultTargetPlatform == TargetPlatform.android && kReleaseMode;

class ActivityNotificationService {
  //TODO work only on Android now
  //TODO find out why we crash with Android emulator?

  Future<void> init() async {
    if (_canWorkOnThisRuntime) {
      tz.initializeTimeZones();
      await _flutterLocalNotificationsPlugin.initialize(_kInitializationSettings,
          onSelectNotification: _selectNotification);
    }
  }

  void tryScheduleAll(Set<Activity> activities) {
    if (_canWorkOnThisRuntime) {
      for (var activity in activities) {
        trySchedule(activity);
      }
    }
  }

  void trySchedule(Activity activity) async {
    if (_canWorkOnThisRuntime) {
      if (!activity.completed && activity.completionDate != null) {
        final now = DateTime.now();
        final timeout = activity.completionDate!.difference(now);
        if (timeout > Duration.zero) {
          _register(activity, timeout);
        }
      }
    }
  }

  void _register(Activity activity, Duration timeout) async {
    assert(timeout > Duration.zero);
    await _flutterLocalNotificationsPlugin.zonedSchedule(
        int.parse(activity.id),
        activity.name,
        S.current.completed_activity,
        tz.TZDateTime.now(tz.local).add(timeout),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            _kAndroidChannelId,
            _kAndroidChannelName,
          ),
        ),
        androidAllowWhileIdle: true,
        payload: '${activity.id} : ${activity.name}}',
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime);
  }

  void tryCancel(Activity activity) async {
    if (_canWorkOnThisRuntime) {
      _flutterLocalNotificationsPlugin.cancel(int.parse(activity.id));
    }
  }
}
