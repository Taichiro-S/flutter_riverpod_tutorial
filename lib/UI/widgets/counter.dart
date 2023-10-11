import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/providers/counter_provider.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. watch the provider and rebuild when the value changes
    final counter = ref.watch(counterProvider);
    return ElevatedButton(
      // 2. use the value
      child: Text('Value: $counter'),
      // 3. change the state inside a button callback
      onPressed: () => ref.read(counterProvider.notifier).state++,
    );
  }
}
