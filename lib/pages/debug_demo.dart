import 'dart:async';

import 'package:flutter/material.dart';

class DebugDemo extends StatelessWidget {
  const DebugDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(children: [
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                debugDumpApp();
              },
              child: const Text('debugDumpApp'),
            );
          }),
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                debugDumpRenderTree();
              },
              child: const Text('debugDumpRenderTree'),
            );
          }),
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                debugDumpLayerTree();
              },
              child: const Text('debugDumpLayerTree'),
            );
          }),
        ]),
      ),
    );
  }
}
