import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_repo_template/src/routes/constants.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends HookWidget {
  final Widget child;
  const ScaffoldWithNavBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  void _onTapItem(GoRouter router, int index) {
    router.go(baseRoutes[index]);
  }

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);
    final location = router.routeInformationProvider.value.uri.toString();
    final currentIndex = useMemoized(() {
      final navigationItemIndex = baseRoutes.indexWhere((element) {
        return location.toString().contains(element);
      });
      return navigationItemIndex;
    }, [location]);

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) => _onTapItem(router, index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
