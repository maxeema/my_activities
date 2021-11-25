import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:my_activities/app_state.dart';
import 'package:my_activities/presentation/actions/actions_delegate.dart';

import 'routes.dart';

class AppNavigator {
  AppNavigator({required ActionsDelegate actionsDelegate, required AppState appState})
      : _actionsDelegate = actionsDelegate,
        _appState = appState {
    _init();
  }

  final ActionsDelegate _actionsDelegate; //
  final AppState _appState;

  final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get navigatorState => navigatorKey.currentState;

  late final List<StreamSubscription> subscriptions;

  void _init() {
    subscriptions = [
      _actionsDelegate.activityNewStream.listen((_) {
        navigatorState?.pushNamed(AppRoutes.activityNew);
      }),
      _actionsDelegate.activityCreatedStream.listen((_) {
        navigatorState?.pop();
      }),
      _actionsDelegate.activityViewStream.listen((activity) {
        navigatorState?.pushNamed(AppRoutes.activityView, arguments: activity);
      }),
    ];
  }

  void dispose() {
    for (var subscription in subscriptions) {
      subscription.cancel();
    }
  }
}
