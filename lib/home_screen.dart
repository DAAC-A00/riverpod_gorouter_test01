import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Providers are declared globally and specify how to create a state
final counterProvider = StateProvider((ref) => 0);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Counter example')),
        body: Center(
          // Consumer is a builder widget that allows you to read providers.
          child: Consumer(
            builder: (context, ref, _) {
              final count = ref.watch(counterProvider);
              return Text('$count');
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              // The read method is a utility to read a provider without listening to it
              onPressed: () => ref.read(counterProvider.notifier).state++,
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              // The read method is a utility to read a provider without listening to it
              onPressed: () => ref.read(counterProvider.notifier).state--,
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
