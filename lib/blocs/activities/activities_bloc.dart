import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:my_activities/common/consumable.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/domain/activity_repo.dart';

import 'activities_event.dart';
import 'activities_state.dart';

export 'activities_event.dart';
export 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  ActivitiesBloc({required ActivityRepo repo})
      : _repo = repo,
        super(ActivitiesState.initial) {
    on<ActivitiesEvent>((event, emit) async {
      event.when(
        list: () => _list(emit),
        add: (newActivity, onSuccess) => _add(emit, newActivity, onSuccess),
        update: (activity) => _update(emit, activity),
        remove: (activity) => _remove(emit, activity),
        complete: (activity) => _completed(emit, activity, true, DateTime.now()),
      );
    }, transformer: restartable());
  }

  final ActivityRepo _repo;

  void _list(Emitter emit) {
    emit(state.copyWith(
      loading: true,
    ));
    _repo.list().then((result) {
      final newState = state.copyWith(
        loading: false,
      );
      if (result.isSuccess) {
        emit(newState.copyWith(data: {...result.success!}));
      } else {
        emit(newState.copyWith(error: Consumable(result.error)));
      }
    });
  }

  void _add(Emitter emit, Activity newActivity, Function(Activity) onSuccess) {
    emit(state.copyWith(
      data: {...state.data, newActivity},
      addingQueue: {...?state.addingQueue, newActivity},
    ));
    _repo.add(newActivity).then((result) {
      final newState = state.copyWith(
        addingQueue: {...?state.addingQueue?..remove(newActivity)},
      );
      if (result.isSuccess) {
        final newActivityRef = newActivity;
        newActivity = newActivity.copyWith(id: result.success!);
        emit(newState.copyWith(data: {
          ...state.data
            ..remove(newActivityRef)
            ..add(newActivity)
        }));
        onSuccess(newActivity);
      } else {
        emit(newState.copyWith(
          data: {...state.data..remove(newActivity)},
          error: Consumable(result.error),
        ));
      }
    });
  }

  void _update(Emitter emit, Activity activity) {
    emit(state.copyWith(
      updatingQueue: {...?state.updatingQueue, activity},
    ));
    _repo.update(activity).then((result) {
      final newState = state.copyWith(
        updatingQueue: {...?state.updatingQueue?..remove(activity)},
      );
      if (result.isSuccess) {
        emit(newState);
      } else {
        emit(newState.copyWith(error: Consumable(result.error)));
      }
    });
  }

  void _remove(Emitter emit, Activity activity) {
    emit(state.copyWith(
      removingQueue: {...?state.removingQueue, activity},
      data: {...state.data..remove(activity)},
    ));
    _repo.remove(activity).then((result) {
      final newState = state.copyWith(removingQueue: {...?state.removingQueue?..remove(activity)});
      if (result.isSuccess) {
        emit(newState);
      } else {
        emit(newState.copyWith(
          data: {...state.data..add(activity)},
          error: Consumable(result.error),
        ));
      }
    });
  }

  void _completed(Emitter emit, Activity activity, bool completed, DateTime completionDate) {
    final completedActivity = activity.copyWith(
      completed: true,
      completionDate: completionDate,
    );
    emit(state.copyWith(
      data: {
        ...state.data
          ..remove(activity)
          ..add(completedActivity)
      },
      updatingQueue: {...?state.updatingQueue, activity},
    ));
    _repo.update(completedActivity).then((result) {
      final newState = state.copyWith(
        updatingQueue: {...?state.updatingQueue?..remove(activity)},
      );
      if (result.isSuccess) {
        emit(newState);
      } else {
        emit(newState.copyWith(
          data: {
            ...state.data
              ..remove(completedActivity)
              ..add(activity)
          },
          error: Consumable(result.error),
        ));
      }
    });
  }
}
