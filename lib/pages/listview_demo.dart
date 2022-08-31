import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  static const loadingTag = "##loading##"; //表尾标记
  final _words = <String>[loadingTag];
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      debugPrint(_controller.offset.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Demo'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          controller: _controller,
          itemBuilder: (context, index) {
            //如果到了表尾
            if (_words[index] == loadingTag) {
              //不足100条，继续获取数据
              if (_words.length - 1 < 100) {
                //获取数据
                _retrieveData();
                //加载时显示loading
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: const SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: CircularProgressIndicator(strokeWidth: 2.0),
                  ),
                );
              } else {
                //已经加载了100条数据，不再获取数据。
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "没有更多了",
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              }
            }
            //显示单词列表项
            return ListTile(title: Text(_words[index]));
          },
          separatorBuilder: (context, index) => const Divider(height: .0),
          itemCount: _words.length),
    );
  }

  void _retrieveData() {
    Future.delayed(const Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList(),
        );
      });
    });
  }
}
