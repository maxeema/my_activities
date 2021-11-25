import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';

import 'activity_new_event.dart';
import 'activity_new_state.dart';

export 'activity_new_event.dart';
export 'activity_new_state.dart';

class ActivityNewBloc extends Bloc<ActivityNewEvent, ActivityNewState> {
  static const kDefaultNewCompletionTimeShift = Duration(minutes: 15);

  ActivityNewBloc({
    required String initialTitle,
    required bool initialCompletionDateTimeEnabled,
    required DateTime? initialCompletionDateTime,
    required String? initialDescription,
  }) : super(ActivityNewState(
          title: initialTitle,
          completionDateEnabled: initialCompletionDateTimeEnabled,
          completionDate: initialCompletionDateTime,
          description: initialDescription,
        )) {
    on<ActivityNewEvent>((event, emit) async {
      event.when(
        setTitle: (newTitle) => _setTitle(emit, newTitle),
        setDescription: (newDescription) => _setDescription(emit, newDescription),
        setCompletionDateTimeEnabled: (newValue) => _setCompletionDateTimeEnabled(emit, newValue),
        setCompletionDateTime: (newDateTime) => _setCompletionDateTime(emit, newDateTime),
        setCompletionTimeOfDay: (newTimeOfDay) => _setCompletionTimeOfDay(emit, newTimeOfDay),
      );
    }, transformer: restartable());
  }

  void _setTitle(Emitter emit, String newTitle) {
    emit(state.copyWith(title: newTitle));
  }

  void _setDescription(Emitter emit, String newDescription) {
    emit(state.copyWith(description: newDescription));
  }

  void _setCompletionDateTimeEnabled(Emitter emit, bool enabled) {
    var newState = state.copyWith(completionDateEnabled: enabled);
    if (enabled) {
      newState = newState.copyWith(completionDate: DateTime.now().add(kDefaultNewCompletionTimeShift));
    } else {
      newState = newState.copyWith(completionDate: null);
    }
    emit(newState);
  }

  void _setCompletionDateTime(Emitter emit, DateTime newDateTime) {
    emit(state.copyWith(completionDate: newDateTime));
  }

  void _setCompletionTimeOfDay(Emitter emit, TimeOfDay newTimeOfDay) {
    if (state.completionDateEnabled) {
      final date = state.completionDate!;
      final dateWithoutHours = date.subtract(state.hoursAndLess!);
      final newHours = Duration(hours: newTimeOfDay.hour, minutes: newTimeOfDay.minute);
      final newDateTime = dateWithoutHours.add(newHours);
      emit(state.copyWith(completionDate: newDateTime));
    }
  }
}
