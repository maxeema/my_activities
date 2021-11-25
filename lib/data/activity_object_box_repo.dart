import 'package:my_activities/common/result.dart';
import 'package:my_activities/data/acitivity_object_box_mapper.dart';
import 'package:my_activities/data/activity_object_box_provider.dart';
import 'package:my_activities/domain/activity.dart';
import 'package:my_activities/domain/activity_repo.dart';

import '../aliases.dart';

class ActivityObjectBoxRepo implements ActivityRepo {
  const ActivityObjectBoxRepo({required this.provider});

  final ActivityObjectBoxProvider provider;

  @override
  Future<Result<dynamic, List<Activity>>> list() async {
    final result = await provider.list();
    if (result.isSuccess) {
      final data = result.success!;
      final list = [...data.map(ActivityObjectBoxMapper.toDomain)];
      return Result.fromSuccess(list);
    } else {
      return Result.fromError(result.error!);
    }
  }

  @override
  Future<Result<SomeError, EntryId>> add(Activity newActivity) async {
    final result = await provider.add(ActivityObjectBoxMapper.fromDomain(newActivity));
    return result;
  }

  @override
  Future<Result<SomeError, OkResult>> update(Activity activity) async {
    final result = await provider.update(ActivityObjectBoxMapper.fromDomain(activity));
    return result;
  }

  @override
  Future<Result<SomeError, OkResult>> remove(Activity activity) async {
    final result = await provider.add(ActivityObjectBoxMapper.fromDomain(activity));
    return result;
  }
}
