import 'package:my_activities/common/result.dart';
import 'package:my_activities/data/activity_object_box_entity.dart';
import 'package:my_activities/objectbox.g.dart';

import '../aliases.dart';

class ActivityObjectBoxProvider {
  const ActivityObjectBoxProvider({required this.box});

  final Box<ActivityObjectBoxEntity> box;

  Future<Result<SomeError, List<ActivityObjectBoxEntity>>> list() {
    try {
      final all = box.getAll();
      return Future.value(Result.fromSuccess(all));
    } catch (error, _) {
      return Future.value(Result.fromError(error));
    }
  }

  Future<Result<SomeError, EntryId>> add(ActivityObjectBoxEntity activity) {
    try {
      final entryId = box.put(activity);
      return Future.value(Result.fromSuccess(entryId.toString()));
    } catch (error, _) {
      return Future.value(Result.fromError(error));
    }
  }

  Future<Result<SomeError, EntryId>> update(ActivityObjectBoxEntity activity) {
    try {
      final entryId = box.put(activity, mode: PutMode.update);
      return Future.value(Result.fromSuccess(entryId.toString()));
    } catch (error, _) {
      return Future.value(Result.fromError(error));
    }
  }

  Future<Result<SomeError, bool>> remove(ActivityObjectBoxEntity activity) {
    try {
      final success = box.remove(activity.id);
      if (success) {
        return Future.value(Result.fromSuccess(success));
      } else {
        throw StateError("Remove operation failed. Entry with '${activity.id}' id wasn't found.");
      }
    } catch (error, _) {
      return Future.value(Result.fromError(error));
    }
  }
}
