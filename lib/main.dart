import 'package:action/pages/align_demo.dart';
import 'package:action/pages/clip_demo.dart';
import 'package:action/pages/constraints_demo.dart';
import 'package:action/pages/debug_demo.dart';
import 'package:action/pages/fitted_demo.dart';
import 'package:action/pages/form_demo.dart';
import 'package:action/pages/input_demo.dart';
import 'package:action/pages/container_demo.dart';
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
      '/align_demo': (context) => const AlignDemo(),
      '/container_demo': (context) => const ContainerDemo(),
      '/clip_demo': (context) => const ClipDemo(),
      '/fitted_demo': (context) => const FittedDemo(),
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
    'Stack Positioned',
    'Align',
    'Container',
    'Clip',
    'FittedBox',
  ];
  final List<String> routes = const [
    '/scaffold_demo',
    '/debug_demo',
    '/switch_demo',
    '/input_demo',
    '/form_demo',
    '/constraints_demo',
    '/wrap_demo',
    '/stack_demo',
    '/align_demo',
    '/container_demo',
    '/clip_demo',
    '/fitted_demo',
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
