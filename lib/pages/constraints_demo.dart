import 'package:flutter/material.dart';

class ConstraintsDemo extends StatefulWidget {
  const ConstraintsDemo({Key? key}) : super(key: key);

  @override
  State<ConstraintsDemo> createState() => _ConstraintsDemoState();
}

class _ConstraintsDemoState extends State<ConstraintsDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Constraints Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 100, minHeight: 100),
        child: Container(
          decoration: const BoxDecoration(color: Colors.grey),
          child: UnconstrainedBox(
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 80, minHeight: 80),
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
