import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/providers/hello_world_provider.dart';
import 'UI/widgets/counter.dart';
import 'UI/widgets/clock.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: MyApp())));
}

/* 
* Subclass the ConsumerWidget
*/
class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorld = ref.watch(helloWorldProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter Riverpod Demo')),
        body: Column(children: [
          Text(helloWorld),
          const CounterWidget(),
          const ClockWidget(),
        ]));
  }
}

/* 
* Use the Consumer widget 
*/
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Consumer(builder: (_, WidgetRef ref, __) {
//       final helloWorld = ref.watch(helloWorldProvider);
//       return Text(helloWorld);
//     });
//   }
// }

/*
* Subclass the ConsumerStatefulWidget
*/
// class MyApp extends ConsumerStatefulWidget {
//   const MyApp({super.key});
//   @override
//   ConsumerState<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends ConsumerState<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     final helloworld = ref.read(helloWorldProvider);
//     print(helloworld);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final helloWorld = ref.watch(helloWorldProvider);
//     return Text(helloWorld);
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
