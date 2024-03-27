// home_screen.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/detail'),
              child: const Text('Go to Detail Page'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/counter'),
              child: const Text('Go to Counter Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
