// main_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/detail'),
            child: const Text('Go to Detail Page'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/home'),
            child: const Text('Go to Home Screen'),
          ),
        ],
      )),
    );
  }
}
