import 'package:flutter/material.dart';

class StackWidget1 extends StatelessWidget {
  const StackWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack组件基础使用'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              Container(
                height: 400,
                width: 300,
                color: Colors.lightBlue,
              ),
              const Text('我是一个文本',
                  style: TextStyle(fontSize: 40, color: Colors.white))
            ],
          ),
        )
    );
  }
}
