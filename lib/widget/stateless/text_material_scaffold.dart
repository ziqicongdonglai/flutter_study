import 'package:flutter/material.dart';
class TextMaterialScaffoldWidget extends StatelessWidget {
  const TextMaterialScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "我是一个标题",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('软件2176 Web3班'),
          elevation: 20.0,
        ),
        body: const MyHome(),
      ),
      theme: ThemeData(
        // 设置主题颜色
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '我是 Dart文本',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black38
        ),
      ),
    );
  }
}

