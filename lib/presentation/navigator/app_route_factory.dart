import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/presentation/actions/actions_delegate.dart';
import 'package:my_activities/presentation/actions/activity/activity_complete_action.dart';
import 'package:my_activities/presentation/actions/activity/activity_created_action.dart';
import 'package:my_activities/presentation/actions/activity/activity_new_action.dart';
import 'package:my_activities/presentation/actions/activity/activity_view_action.dart';
import 'package:my_activities/presentation/features/activities_list/activities_list_page.dart';
import 'package:my_activities/presentation/features/activity_new/activity_new_page.dart';
import 'package:my_activities/presentation/features/activity_view/activity_view_page.dart';

import 'routes.dart';

class AppRouteFactory {
  const AppRouteFactory({required ActionsDelegate actionsDelegate}) : _actionsDelegate = actionsDelegate;

  final ActionsDelegate _actionsDelegate;

  Route<dynamic> call(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case AppRoutes.activitiesList:
            return ActivitiesListPage(
              bloc: context.read(),
              newAction: ActivityNewAction(_actionsDelegate),
              viewAction: ActivityViewAction(_actionsDelegate),
              completeAction: ActivityCompleteAction(
                delegate: _actionsDelegate,
                activitiesBloc: context.read(),
              ),
            );
          case AppRoutes.activityNew:
            return ActivityNewPage(
              activitiesBloc: context.read(),
              createdAction: ActivityCreatedAction(_actionsDelegate),
            );
          case AppRoutes.activityView:
            return ActivityViewPage(
              activitiesBloc: context.read(),
              activity: settings.arguments as Activity,
              completeAction: ActivityCompleteAction(
                delegate: _actionsDelegate,
                activitiesBloc: context.read(),
              ),
            );
          default:
            // normally it shouldn't happen
            return Container();
        }
      },
    );
  }
}
