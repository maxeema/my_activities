import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_activities/domain/activity.dart';

part 'activities_event.freezed.dart';

@freezed
class ActivitiesEvent with _$ActivitiesEvent {
  const factory ActivitiesEvent.list() = _List;

  const factory ActivitiesEvent.add(Activity newActivity,
      {required Function(Activity newlyAddedActivity) onSuccess}) = _Add;

  const factory ActivitiesEvent.update(Activity activity) = _Update;

  const factory ActivitiesEvent.remove(Activity activity) = _Remove;

  const factory ActivitiesEvent.complete(Activity activity) = _Complete;
}
