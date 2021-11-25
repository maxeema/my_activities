import 'package:my_activities/data/activity_object_box_entity.dart';
import 'package:my_activities/domain/activity.dart';

class ActivityObjectBoxMapper {
  ActivityObjectBoxMapper._();

  static Activity toDomain(ActivityObjectBoxEntity entity) {
    return Activity(
      id: entity.id.toString(),
      name: entity.name,
      completed: entity.completed,
      creationDate: entity.creationDate,
      description: entity.description,
      completionDate: entity.completionDate,
      // completionTime: tz.TZDateTime.from(entity.completionTime, tz.local),
    );
  }

  static ActivityObjectBoxEntity fromDomain(Activity activity) {
    return ActivityObjectBoxEntity(
      id: int.parse(activity.id),
      name: activity.name,
      completed: activity.completed,
      creationDate: activity.creationDate,
      description: activity.description,
      completionDate: activity.completionDate,
    );
  }
}
