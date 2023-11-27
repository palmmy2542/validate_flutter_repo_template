import 'package:flutter/material.dart';
import 'package:flutter_repo_template/src/routes/business/business.dart';
import 'package:flutter_repo_template/src/routes/business/business_sub/business_sub.dart';
import 'package:go_router/go_router.dart';

RouteBase getBusinessRoute(GlobalKey<NavigatorState> rootKey) {
  return GoRoute(
    path: businessPage['path']!,
    name: businessPage['name'],
    pageBuilder: (BuildContext context, GoRouterState state) =>
        const NoTransitionPage(child: Business()),
    routes: [
      GoRoute(
        path: businessSubPage['path']!,
        name:
            '${businessPage['name']}_${businessSubPage['name']}', //REMARK: This line is a suggestion from publisher.However, you can set up with your team convention.
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const NoTransitionPage(child: BusinessSub()),
      ),
    ],
  );
}
