import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Map<String, String> homePage = {
  'name': 'HOME',
  'title': 'Home Page',
  'path': '/home'
};

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(homePage['title']!),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            router.push('/home/home-sub');
          },
          child: const Text('Go to Home Sub'),
        ),
      ),
    );
  }
}
