// counter_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
        appBar: AppBar(title: const Text('Counter Screen')),
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
              Text('Counter: $count',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => ref.read(counterProvider.notifier).state++,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
