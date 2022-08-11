import 'package:action/pages/constraints_demo.dart';
import 'package:action/pages/debug_demo.dart';
import 'package:action/pages/form_demo.dart';
import 'package:action/pages/input_demo.dart';
import 'package:action/pages/scaffold_demo.dart';
import 'package:action/pages/stack_demo.dart';
import 'package:action/pages/switch_demo.dart';
import 'package:action/pages/wrap_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/scaffold_demo': (context) => const ScaffoldDemo(),
      '/debug_demo': (context) => const DebugDemo(),
      '/switch_demo': (context) => const SwitchDemo(),
      '/input_demo': (context) => const InputDemo(),
      '/form_demo': (context) => const FormDemo(),
      '/constraints_demo': (context) => const ConstraintsDemo(),
      '/wrap_demo': (context) => const WrapDemo(),
      '/stack_demo': (context) => const StackDemo(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final List<String> names = const [
    'Scaffold Messenger',
    'debugDumpApp',
    'Switch',
    'Input',
    'Form',
    'Constraints',
    'Wrap Flow',
    'Stack Positioned'
  ];
  final List<String> routes = const [
    '/scaffold_demo',
    '/debug_demo',
    '/switch_demo',
    '/input_demo',
    '/form_demo',
    '/constraints_demo',
    '/wrap_demo',
    '/stack_demo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter In Action'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, routes[index]);
            },
            child: Card(
              child: ListTile(
                title: Text(names[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
