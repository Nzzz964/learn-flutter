import 'dart:async';

import 'package:flutter/material.dart';

class ClipDemo extends StatelessWidget {
  const ClipDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clip Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 50,
              width: 100,
            ),
            const SizedBox(height: 15),
            ClipOval(
              child: Container(
                color: Colors.green,
                height: 50,
                width: 100,
              ),
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.red,
                height: 50,
                width: 100,
                child: Container(
                  transform: Matrix4.identity()..setTranslationRaw(50, 25, 0),
                  color: Colors.yellow,
                ),
              ),
            ),
            const SizedBox(height: 15),
            ClipRect(
              child: Container(
                color: Colors.red,
                height: 50,
                width: 100,
                child: Container(
                  transform: Matrix4.identity()..setTranslationRaw(50, 25, 0),
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
