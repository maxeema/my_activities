import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:my_activities/app_actions_delegate.dart';
import 'package:my_activities/app_state.dart';
import 'package:my_activities/blocs/activities/activities_bloc.dart';
import 'package:my_activities/blocs/activities/activities_event.dart';
import 'package:my_activities/data/activity_object_box_provider.dart';
import 'package:my_activities/data/activity_object_box_repo.dart';
import 'package:my_activities/objectbox.dart';
import 'package:my_activities/presentation/actions/action_source.dart';
import 'package:my_activities/presentation/actions/activity/activity_complete_action.dart';
import 'package:my_activities/presentation/navigator/app_navigator.dart';
import 'package:my_activities/presentation/util/expired_activities_helper.dart';
import 'package:my_activities/services/activity_auto_completion_service.dart';
import 'package:my_activities/services/activity_notification_service.dart';

import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  final appState = AppState();
  final saveDir = await path.getApplicationDocumentsDirectory();
  final objectBox = await ObjectBox.create(saveDirectory: saveDir.path);
// objectBox.store.box<ActivityObjectBoxEntity>().removeAll();
  late ActivitiesBloc activitiesBloc;
  late AppActionsDelegate actionsDelegate;
  void completeActivity(activity) {
    ActivityCompleteAction(delegate: actionsDelegate, activitiesBloc: activitiesBloc)
        .call(activity, ActionSource.service);
  }

  final completionService = ActivityAutoCompletionService(onComplete: completeActivity);
  final notificationService = ActivityNotificationService();
  await notificationService.init();
  actionsDelegate = AppActionsDelegate(
    appState: appState,
    activityAutoCompletionService: completionService,
    activityNotificationService: notificationService,
  );
  activitiesBloc =
      ActivitiesBloc(repo: ActivityObjectBoxRepo(provider: ActivityObjectBoxProvider(box: objectBox.store.box())))
        ..add(const ActivitiesEvent.list())
        ..stream.firstWhere((state) => state.hasFirstLoad).then((state) {
          final activities = state.data;
          final expiredActivitiesToFix = ExpiredActivitiesHelper.findExpiredActivitiesToFix(activities);
          for (var expiredActivity in expiredActivitiesToFix) {
            completeActivity(expiredActivity);
          }
          final activitiesToSchedule = activities.difference(expiredActivitiesToFix);
          completionService.tryScheduleAll(activitiesToSchedule);
          notificationService.tryScheduleAll(activitiesToSchedule);
        });
  final appNavigator = AppNavigator(actionsDelegate: actionsDelegate, appState: appState);
  //
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ActivitiesBloc>(create: (_) => activitiesBloc),
    ],
    child: MyApp(
      navigatorKey: appNavigator.navigatorKey,
      actionsDelegate: actionsDelegate,
    ),
  ));
}
