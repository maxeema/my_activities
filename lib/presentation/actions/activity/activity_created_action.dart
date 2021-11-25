import 'package:my_activities/domain/activity.dart';

import '../action.dart';
import '../action_source.dart';
import '../actions_delegate.dart';

class ActivityCreatedAction implements Action {
  const ActivityCreatedAction(this.delegate);

  final ActionsDelegate delegate;

  @override
  void call([covariant Activity? activity, ActionSource source = ActionSource.ui]) {
    delegate.onActivityCreated(source, activity!);
  }
}
