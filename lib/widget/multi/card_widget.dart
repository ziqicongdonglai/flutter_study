import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card组件'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: const <Widget>[
                  ListTile(
                    title: Text(
                      "张三",
                      style: TextStyle(fontSize: 28),
                    ),
                    subtitle: Text("高级软件工程师"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话：1213214142"),
                  ),
                  ListTile(
                    title: Text("地址：北京市海淀区"),
                  )
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: const <Widget>[
                  ListTile(
                    title: Text(
                      "李四",
                      style: TextStyle(fontSize: 28),
                    ),
                    subtitle: Text("高级软件工程师"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话：1213214142"),
                  ),
                  ListTile(
                    title: Text("地址：北京市海淀区"),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
