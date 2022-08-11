import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  State<WrapDemo> createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wrap Flow Demo'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ConstrainedBox(
          //设置RenderBox最小宽度(居中用
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
            children: const <Widget>[
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('A')),
                label: Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('M')),
                label: Text('Lafayette'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('H')),
                label: Text('Mulligan'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('J')),
                label: Text('Laurens'),
              ),
            ],
          ),
        ));
  }
}
