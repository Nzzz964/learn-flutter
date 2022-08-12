import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  State<AlignDemo> createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Align Demo'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Align(
          //它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高。
          heightFactor: 2,
          //如果值为null，则组件的宽高将会占用尽可能多的空间。
          widthFactor: null,
          child: Container(
            height: 120,
            width: 130,
            color: Colors.blue,
            child: Align(
              //默认 Alignment.center = Alignment(0, 0)
              //实际偏移 = (Alignment.x * (parentWidth - childWidth) / 2 + (parentWidth - childWidth) / 2, Alignment.y * (parentHeight - childHeight) / 2 + (parentHeight - childHeight) / 2)
              // alignment: const Alignment(0.2, 0.6),
              //实际偏移 = (FractionalOffse.x * (parentWidth - childWidth), FractionalOffse.y * (parentHeight - childHeight))
              alignment: const FractionalOffset(0.2, 0.6),
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(color: Colors.red),
              ),
            ),
          ),
        ));
  }
}
