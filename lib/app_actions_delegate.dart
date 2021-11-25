import 'package:rxdart/rxdart.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/presentation/actions/action_source.dart';
import 'package:my_activities/presentation/actions/actions_delegate.dart';
import 'package:my_activities/services/activity_auto_completion_service.dart';
import 'package:my_activities/services/activity_notification_service.dart';

import 'app_state.dart';

class AppActionsDelegate extends ActionsDelegate {
  AppActionsDelegate(
      {required AppState appState,
      required ActivityAutoCompletionService activityAutoCompletionService,
      required ActivityNotificationService activityNotificationService})
      : _appState = appState,
        _activityAutoCompletionService = activityAutoCompletionService,
        _activityNotificationService = activityNotificationService {
    _init();
  }

  final AppState _appState;
  final ActivityAutoCompletionService _activityAutoCompletionService;
  final ActivityNotificationService _activityNotificationService;

  void _init() {
    activityInteractStream.pipe(_appState.lastActivity);
  }

  @override
  final Stream<Activity> activityViewStream = PublishSubject(); //
  @override
  void onActivityView(ActionSource source, Activity activity) {
    (activityViewStream as Subject).add(activity);
    if (source == ActionSource.ui) {
      onActivityInteract(source, activity);
    }
  }

  @override
  final Stream<void> activityNewStream = PublishSubject(); //
  @override
  void onActivityNew(ActionSource source) => (activityNewStream as Subject).add(null);

  @override
  final Stream<Activity> activityCreatedStream = PublishSubject(); //
  @override
  void onActivityCreated(ActionSource source, Activity newActivity) {
    (activityCreatedStream as Subject).add(newActivity);
    if (source == ActionSource.ui) {
      onActivityInteract(source, newActivity);
    }
    _activityAutoCompletionService.trySchedule(newActivity);
    _activityNotificationService.trySchedule(newActivity);
  }

  @override
  final Stream<Activity> activityCompleteStream = PublishSubject(); //
  @override
  void onActivityComplete(ActionSource source, Activity activity) {
    (activityCompleteStream as Subject).add(activity);
    if (source == ActionSource.ui) {
      onActivityInteract(source, activity);
      _activityAutoCompletionService.tryCancel(activity);
      _activityNotificationService.tryCancel(activity);
    }
  }

  @override
  final Stream<Activity> activityInteractStream = PublishSubject(); //
  @override
  void onActivityInteract(ActionSource source, Activity activity) => (activityInteractStream as Subject).add(activity);
}
