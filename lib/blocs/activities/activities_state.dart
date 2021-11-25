import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_activities/common/consumable.dart';
import 'package:my_activities/domain/activity.dart';

part 'activities_state.freezed.dart';

@freezed
class ActivitiesState with _$ActivitiesState {
  factory ActivitiesState({
    required final Set<Activity> data,
    required final bool loading,
    final Set<Activity>? addingQueue,
    final Set<Activity>? updatingQueue,
    final Set<Activity>? removingQueue,
    final Consumable<dynamic>? error,
  }) = _ActivitiesState;

  static final ActivitiesState initial = ActivitiesState(data: <Activity>{}, loading: false);
}

extension ActivitiesStateX on ActivitiesState {
  bool get hasError => error?.object != null;

  bool get hasFirstLoad => !loading && !identical(this, ActivitiesState.initial);

  //TODO move to state for performance improvements
  List<Activity> get orderedData => List.of(data).sorted((a, b) {
        if (!b.completed) {
          return b.completionDate?.compareTo(a.creationDate) ?? 1;
        }
        if (a.completed && b.completed) {
          final compared = b.completionDate!.compareTo(a.completionDate!);
          if (compared == 0) return 1;
          return compared > 0 ? 2 : -2;
        }
        return -3;
      });
}
