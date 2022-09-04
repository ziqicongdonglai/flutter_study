import 'package:flutter/material.dart';

class AppBarCustomTopTabBarPage extends StatelessWidget {
  const AppBarCustomTopTabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: "返回",
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: TabBar(
                    tabs: <Widget>[
                      Tab(text: "热门"),
                      Tab(text: "推荐"),
                    ],
                  ),
                )
              ],
            ),
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
          body: TabBarView(
            children: [
              ListView(
                children: const <Widget>[
                  ListTile(title: Text("这是第一个tab")),
                  ListTile(title: Text("这是第一个tab")),
                  ListTile(title: Text("这是第一个tab")),
                ],
              ),
              ListView(
                children: const <Widget>[
                  ListTile(title: Text("这是第二个tab")),
                  ListTile(title: Text("这是第二个tab")),
                  ListTile(title: Text("这是第二个tab")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
