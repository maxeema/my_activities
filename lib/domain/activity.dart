import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';

@freezed
class Activity with _$Activity {
  factory Activity({
    required final String id,
    required String name,
    required bool completed,
    required DateTime creationDate,
    String? description,
    DateTime? completionDate,
  }) = _Activity;
}
