import 'package:flutter/material.dart';
import 'package:flutter_repo_template/src/routes/home/home.dart';
import 'package:flutter_repo_template/src/routes/home/home_sub/index.dart';
import 'package:go_router/go_router.dart';

RouteBase getHomeRoute(GlobalKey<NavigatorState> rootKey) {
  return GoRoute(
    path: homePage['path']!,
    name: homePage['name'],
    pageBuilder: (BuildContext context, GoRouterState state) =>
        const NoTransitionPage(child: Home()),
    routes: [
      GoRoute(
        path: homeSubPage['path']!,
        name:
            '${homeSubPage['name']}_${homeSubPage['name']}', //REMARK: This line is a suggestion from publisher.However, you can set up with your team convention.
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const NoTransitionPage(child: HomeSub()),
      ),
    ],
  );
}
