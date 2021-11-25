//

import 'action_source.dart';

abstract class Action {
  const Action();

  void call([dynamic arguments, ActionSource source]);
}
