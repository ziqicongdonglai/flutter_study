import 'package:flutter/material.dart';

class AppBarUserAccountsDrawerPage extends StatelessWidget {
  const AppBarUserAccountsDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Drawer 组件'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('zk'),
              accountEmail: const Text('zk123@qq.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://zqcdl-pic.oss-cn-hangzhou.aliyuncs.com/avatar/me.jpg'),
              ),
              decoration: const BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.itying.com/images/flutter/1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: [
                Image.network("https://www.itying.com/images/flutter/2.png"),
                Image.network("https://www.itying.com/images/flutter/3.png"),
                Image.network("https://www.itying.com/images/flutter/4.png"),
              ],
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
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/search');
              },
              child: const ListTile(
                title: Text("搜索"),
                leading: CircleAvatar(
                  child: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text("右侧侧边栏"),
      ),
      body: const Center(child: Text('内容')),
    );
  }
}
