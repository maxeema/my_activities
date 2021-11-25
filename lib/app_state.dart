import 'package:rxdart/rxdart.dart';
import 'package:my_activities/domain/activity.dart';

class AppState {
  final lastActivity = BehaviorSubject<Activity>();
}
