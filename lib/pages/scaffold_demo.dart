import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  const ScaffoldDemo({Key? key}) : super(key: key);

  static final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Scaffold Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldState state =
                      context.findAncestorStateOfType<ScaffoldState>()!;
                  state.openDrawer();
                },
                child: const Text('findAncestorStateOfType 打开抽屉菜单'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldState state = Scaffold.of(context);
                  state.openDrawer();
                },
                child: const Text('Scaffold.of 打开抽屉菜单'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  _globalKey.currentState?.openDrawer();
                },
                child: const Text('GlobalKey 打开抽屉菜单'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("我是SnackBar"),
                    ),
                  );
                },
                child: const Text('显示SnackBar'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
