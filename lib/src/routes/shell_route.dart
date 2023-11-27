import 'package:flutter/material.dart';
import 'package:flutter_repo_template/src/containers/scaffold_with_nav_bar/index.dart';
import 'package:flutter_repo_template/src/routes/business/business_route.dart';
import 'package:flutter_repo_template/src/routes/constants.dart';
import 'package:flutter_repo_template/src/routes/home/home_route.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: initialRoutePath,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: [
        getHomeRoute(_rootNavigatorKey),
        getBusinessRoute(_rootNavigatorKey)
      ],
    ),
  ],
);

class ShellRouteApp extends StatelessWidget {
  const ShellRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App', // Set your app's name
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
