import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Positioned Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
          children: [
            Container(
              color: Colors.red,
              child: const Text(
                "Hello world",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Positioned(left: 18.0, child: Text("I am Jack")),
            const Positioned(top: 18.0, child: Text("Your friend"))
          ],
        ),
      ),
    );
  }
}
