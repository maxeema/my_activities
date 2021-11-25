import 'package:flutter/material.dart';
import 'package:my_activities/presentation/actions/actions_delegate.dart';

import 'generated/l10n.dart';
import 'presentation/navigator/app_route_factory.dart';
import 'presentation/navigator/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    required GlobalKey<NavigatorState> navigatorKey,
    required ActionsDelegate actionsDelegate,
    Key? key,
  })  : _navigatorKey = navigatorKey,
        _actionsDelegate = actionsDelegate,
        super(key: key);

  final GlobalKey<NavigatorState> _navigatorKey;
  final ActionsDelegate _actionsDelegate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        S.delegate,
      ],
      initialRoute: AppRoutes.activitiesList,
      onGenerateRoute: AppRouteFactory(actionsDelegate: _actionsDelegate),
    );
  }
}
