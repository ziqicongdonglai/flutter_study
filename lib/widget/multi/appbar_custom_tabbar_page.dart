import 'package:flutter/material.dart';

class AppBarCustomTabBarPage extends StatelessWidget {
  const AppBarCustomTabBarPage({Key? key}) : super(key: key);

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
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: "热门"),
                Tab(text: "推荐"),
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.itying.com/images/flutter/1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListView(
                    children: const <Widget>[
                      Text('我是头部'),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text("个人中心"),
                  leading: CircleAvatar(
                    child: Icon(Icons.people),
                  ),
                ),
                const Divider(),
                const ListTile(
                  title: Text("系统设置"),
                  leading: CircleAvatar(
                    child: Icon(Icons.settings),
                  ),
                ),
              ],
            ),
          ),
          endDrawer: const Drawer(
            child: Text("右侧侧边栏"),
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
