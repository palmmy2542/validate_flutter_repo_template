import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Map<String, String> businessSubPage = {
  'name': 'BUSINESS_SUB',
  'title': 'Business Sub Page',
  'path': 'business-sub'
};

class BusinessSub extends StatelessWidget {
  const BusinessSub({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(businessSubPage['title']!),
        leading: BackButton(
          onPressed: () {
            router.pop();
          },
        ),
      ),
      body: Center(
        child: Text(businessSubPage['name']!),
      ),
    );
  }
}
