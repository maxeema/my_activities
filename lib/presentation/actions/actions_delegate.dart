import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/presentation/actions/action_source.dart';

abstract class ActionsDelegate {
  Stream<Activity> get activityViewStream; //
  void onActivityView(ActionSource source, Activity activity);

  Stream<void> get activityNewStream; //
  onActivityNew(ActionSource source);

  Stream<Activity> get activityCreatedStream; //
  onActivityCreated(ActionSource source, Activity newActivity);

  Stream<Activity> get activityCompleteStream; //
  onActivityComplete(ActionSource source, Activity activity);

  Stream<Activity> get activityInteractStream; //
  onActivityInteract(ActionSource source, Activity activity);
}
