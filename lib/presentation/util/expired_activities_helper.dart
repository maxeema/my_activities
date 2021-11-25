import 'package:my_activities/domain/activity.dart';

class ExpiredActivitiesHelper {
  ExpiredActivitiesHelper._();

  static Set<Activity> findExpiredActivitiesToFix(Set<Activity> activities) {
    final now = DateTime.now();
    final expiredActivitiesToFix = activities
        .where((activity) => !activity.completed && activity.completionDate != null)
        .where((activity) => now.compareTo(activity.completionDate!) >= 0)
        .toSet();
    return expiredActivitiesToFix;
  }
}
