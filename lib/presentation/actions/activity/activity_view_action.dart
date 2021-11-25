import 'package:my_activities/domain/activity.dart';

import '../action.dart';
import '../action_source.dart';
import '../actions_delegate.dart';

class ActivityViewAction implements Action {
  const ActivityViewAction(
    this.delegate,
  );

  final ActionsDelegate delegate;

  @override
  void call([covariant Activity? activity, ActionSource source = ActionSource.ui]) {
    delegate.onActivityView(source, activity!);
  }
}
