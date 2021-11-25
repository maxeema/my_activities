import 'package:my_activities/aliases.dart';
import 'package:my_activities/common/result.dart';

import 'activity.dart';

abstract class ActivityRepo {
  Future<Result<dynamic, List<Activity>>> list();

  Future<Result<SomeError, EntryId>> add(Activity newActivity);

  Future<Result<SomeError, OkResult>> update(Activity activity);

  Future<Result<SomeError, OkResult>> remove(Activity activity);
}
