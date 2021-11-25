import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_activities/domain/activity.dart';

part 'activity_new_state.freezed.dart';

@freezed
class ActivityNewState with _$ActivityNewState {
  factory ActivityNewState({
    required final String title,
    required final bool completionDateEnabled,
    DateTime? completionDate,
    final String? description,
  }) = _ActivityNewState;
}

extension ActivityNewStateX on ActivityNewState {
  bool get readyToCreate => title.trim().isNotEmpty;

  Activity get newActivity => Activity(
      id: '0',
      name: title,
      creationDate: DateTime.now(),
      completed: false,
      completionDate: completionDateEnabled ? completionDate : null,
      description: description);

  TimeOfDay? get timeOfDay => completionDateEnabled ? TimeOfDay.fromDateTime(completionDate!) : null;

  Duration? get hoursAndLess => completionDateEnabled
      ? Duration(
          hours: completionDate!.hour,
          minutes: completionDate!.minute,
          seconds: completionDate!.second,
          milliseconds: completionDate!.millisecond,
          microseconds: completionDate!.microsecond)
      : null;
}
