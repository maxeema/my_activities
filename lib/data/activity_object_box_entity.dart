import 'package:objectbox/objectbox.dart';

@Entity()
class ActivityObjectBoxEntity {
  ActivityObjectBoxEntity({
    required this.id,
    required this.name,
    required this.completed,
    required this.creationDate,
    this.description,
    this.completionDate,
  });

  @Id()
  int id;
  final String name;
  final bool completed;
  @Property(type: PropertyType.date)
  final DateTime creationDate;
  @Property(type: PropertyType.date)
  final DateTime? completionDate;
  final String? description;

  @override
  String toString() => 'id: $id, completed: $completed, completionDate: $completionDate, name: $name}';
}
