import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: _switchSelected,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                  });
                },
              ),
              Text(_switchSelected ? '开' : '关'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _checkboxSelected,
                onChanged: (value) {
                  setState(() {
                    _checkboxSelected = value!;
                  });
                },
              ),
              Text(_checkboxSelected ? '选中' : '未选中'),
            ],
          )
        ]),
      ),
    );
  }
}
