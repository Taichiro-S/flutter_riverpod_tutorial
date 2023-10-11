import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/providers/clock_provider.dart';
import 'package:intl/intl.dart';

class ClockWidget extends ConsumerWidget {
  const ClockWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. watch the provider and rebuild when the value changes
    final currentTime = ref.watch(clockProvider);
    final currentTime2 = ref.read(clockProvider);
    final currentTime3 = ref.read(clockProvider.notifier).state;
    final formattedTime = DateFormat('hh:mm:ss').format(currentTime);
    final formattedTime2 = DateFormat('hh:mm:ss').format(currentTime2);
    final formattedTime3 = DateFormat('hh:mm:ss').format(currentTime3);
    return Column(children: [
      Text(formattedTime),
      Text(formattedTime2),
      Text(currentTime3.toString()),
      Text(formattedTime3)
    ]);
  }
}
