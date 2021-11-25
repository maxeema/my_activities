import 'dart:async';

import 'package:my_activities/aliases.dart';
import 'package:my_activities/domain/activity.dart';

class ActivityAutoCompletionService {
  ActivityAutoCompletionService({required this.onComplete});

  final void Function(Activity activity) onComplete;

  final _map = <ActivityId, Timer>{};

  void tryScheduleAll(Set<Activity> activities) {
    for (var activity in activities) {
      trySchedule(activity);
    }
  }

  void trySchedule(Activity activity) {
    if (!_map.containsKey(activity.id) && !activity.completed && activity.completionDate != null) {
      final now = DateTime.now();
      final timeout = activity.completionDate!.difference(now);
      if (timeout > Duration.zero) {
        _register(activity, timeout);
      }
    }
  }

  void _register(Activity activity, Duration timeout) {
    assert(timeout > Duration.zero);
    late final Timer timerRef;
    timerRef = Timer(timeout, () {
      final currentTimer = _map[activity.id];
      if (currentTimer == timerRef) {
        onComplete(activity);
        _clear(activity);
      }
    });
    _map[activity.id] = timerRef;
  }

  void tryCancel(Activity activity) {
    _clear(activity);
  }

  void _clear(Activity activity) {
    final currentTimer = _map[activity.id];
    currentTimer?.cancel();
    _map.remove(activity.id);
  }
}
