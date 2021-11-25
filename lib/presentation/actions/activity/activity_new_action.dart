import '../action.dart';
import '../action_source.dart';
import '../actions_delegate.dart';

class ActivityNewAction implements Action {
  const ActivityNewAction(
    this.delegate,
  );

  final ActionsDelegate delegate;

  @override
  void call([dynamic arguments, ActionSource source = ActionSource.ui]) {
    delegate.onActivityNew(source);
  }
}
