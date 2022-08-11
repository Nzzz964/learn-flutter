import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _unameController = TextEditingController();
  final _pwdController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        //自动表单验证
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              controller: _unameController,
              decoration: const InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                //prefixIcon 和 icon 不同
                // prefixIcon: Icon(Icons.person),
                icon: Icon(Icons.person),
              ),
              //校验用户名
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "用户名不能为空";
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                // prefixIcon: Icon(Icons.lock),
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              //校验密码
              validator: (v) {
                return v!.trim().length > 5 ? null : "密码不能少于6位";
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 12, right: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            return ElevatedButton(
                              onPressed: () {
                                final form = Form.of(context)!;
                                if (form.validate()) {
                                  //验证通过
                                }
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text("登录"),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            return ElevatedButton(
                              onPressed: () {
                                final form = Form.of(context)!;
                                form.reset();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text("重置"),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
