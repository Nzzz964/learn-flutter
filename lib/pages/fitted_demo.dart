import 'dart:async';

import 'package:flutter/material.dart';

class FittedDemo extends StatelessWidget {
  const FittedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FittedBox Demo'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(children: [
            Row(
              children: List.generate(
                15,
                (index) => index % 2 == 0 ? Text(' ' * 5) : Text('$index' * 5),
              ),
            ),
            const SizedBox(height: 30),
            FittedBox(
              child: Row(
                children: List.generate(
                  15,
                  (index) =>
                      index % 2 == 0 ? Text(' ' * 5) : Text('$index' * 5),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) => Text('$index' * 5)),
            ),
            const SizedBox(height: 30),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) => Text('$index' * 5)),
              ),
            ),
            const SizedBox(height: 30),
            SingleLineFittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) => Text('$index' * 5)),
              ),
            ),
            const SizedBox(height: 30),
            SingleLineFittedBox(
              child: Row(
                children: List.generate(
                  15,
                  (index) =>
                      index % 2 == 0 ? Text(' ' * 5) : Text('$index' * 5),
                ),
              ),
            )
          ]),
        ));
  }
}

class SingleLineFittedBox extends StatelessWidget {
  const SingleLineFittedBox({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return FittedBox(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minWidth: constraints.maxWidth,
              maxWidth: double.infinity,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
