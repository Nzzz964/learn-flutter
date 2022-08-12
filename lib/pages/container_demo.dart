import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  double angle = pi / 180;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    var step = 0;
    //还没学动画 先凑合一下
    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      setState(() {
        angle = (pi / 180) * (step++);
        if (step >= 360) step = 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: [
            const SizedBox(height: 30),
            DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange.shade700],
                    ), //背景渐变
                    borderRadius: BorderRadius.circular(3.0), //3像素圆角
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                      )
                    ]),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const SizedBox(height: 30),
            Container(
              color: Colors.black,
              child: Transform.translate(
                offset: const Offset(30, 30),
                child: Container(
                  transform: Matrix4.rotationY(angle),
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),
            const SizedBox(height: 100),
            //由于RotatedBox是作用于layout阶段 所以子组件会旋转90度 (而不只是绘制的内容) decoration会作用到子组件所占用的实际空间上
            RotatedBox(
              quarterTurns: 1,
              child: Container(
                color: Colors.yellow,
                child: const Text('Hello World'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
