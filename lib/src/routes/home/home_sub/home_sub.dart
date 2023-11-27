import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Map<String, String> homeSubPage = {
  'name': 'HOME_SUB',
  'title': 'Home Sub Page',
  'path': 'home-sub'
};

class HomeSub extends StatelessWidget {
  const HomeSub({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(homeSubPage['title']!),
        leading: BackButton(
          onPressed: () {
            router.pop();
          },
        ),
      ),
      body: Center(
        child: Text(homeSubPage['name']!),
      ),
    );
  }
}
