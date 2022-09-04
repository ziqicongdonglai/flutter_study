import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: "Search",
          onPressed: () {
            debugPrint('menu Pressed');
          },
        ),
        title: const Text('Flutter AppBar'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: "Search",
            onPressed: () {
              debugPrint('Search Pressed');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            tooltip: "more_horiz",
            onPressed: () {
              debugPrint('more_horiz Pressed');
            },
          )
        ],
      ),
      body: const Text('这是 Appbar'),
    );
  }
}
