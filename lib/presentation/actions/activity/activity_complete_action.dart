import 'package:my_activities/blocs/activities/activities_bloc.dart';
import 'package:my_activities/blocs/activities/activities_event.dart';
import 'package:my_activities/domain/activity.dart';

import '../action.dart';
import '../action_source.dart';
import '../actions_delegate.dart';

class ActivityCompleteAction implements Action {
  const ActivityCompleteAction({
    required this.delegate,
    required this.activitiesBloc,
  });

  final ActionsDelegate delegate;
  final ActivitiesBloc activitiesBloc;

  @override
  void call([covariant Activity? activity, ActionSource source = ActionSource.ui]) {
    activity!;
    activitiesBloc.add(ActivitiesEvent.complete(activity));
    delegate.onActivityComplete(source, activity);
  }
}
