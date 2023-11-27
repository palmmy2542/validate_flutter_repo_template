import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Map<String, String> businessPage = {
  'name': 'BUSINESS',
  'title': 'Business Page',
  'path': '/business'
};

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(businessPage['title']!),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            router.push('/business/business-sub');
          },
          child: const Text('Go to Business Sub'),
        ),
      ),
    );
  }
}
