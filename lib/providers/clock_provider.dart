import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/services/clock.dart';

final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) {
  return Clock();
});
