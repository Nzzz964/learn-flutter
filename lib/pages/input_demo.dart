import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  final _unameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _unameController.text = "hello world!";
    //监听输入框改变
    _unameController.addListener(() {
      debugPrint(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          TextField(
            controller: _unameController,
            decoration: const InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person),
              //隐藏下边框
              // border: InputBorder.none,
            ),
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            onChanged: (value) {
              //监听 value 更改
              debugPrint(value);
            },
          ),
        ],
      ),
    );
  }
}
