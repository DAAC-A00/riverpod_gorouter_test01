// main_screen.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/home'); // GoRouter를 사용하여 HomeScreen으로 이동
          },
          child: const Text('Go to Home Screen'),
        ),
      ),
    );
  }
}
