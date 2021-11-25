import 'package:flutter/material.dart';
import 'package:my_activities/domain/activity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'activity_new_event.freezed.dart';

@freezed
class ActivityNewEvent with _$ActivityNewEvent {
  const factory ActivityNewEvent.setTitle(String title) = _SetTitle;
  const factory ActivityNewEvent.setDescription(String description) = _SetDescription;
  const factory ActivityNewEvent.setCompletionDateTimeEnabled(bool enabled) = _SetCompletionDateTimeEnabled;
  const factory ActivityNewEvent.setCompletionDateTime(DateTime newDateTime) = _SetCompletionDateTime;
  const factory ActivityNewEvent.setCompletionTimeOfDay(TimeOfDay newTimeOfDate) = _SetCompletionTimeOfDay;
}

