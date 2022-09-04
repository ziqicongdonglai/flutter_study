import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: const Body(),
    );
  }

  // 应用程序栏
  AppBar _buildAppBar(context) {
    return AppBar(
      elevation: 0,
      // backgroundColor: Colors.white,
      title: const Text("首页"),
      centerTitle: true,
    );
  }
}

//页面body类
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1.基本路由跳转传值
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SearchPage(
                  title: 'search',
                );
              }));
            },
            child: const Text('基本路由跳转传值'),
          ),
          const SizedBox(
            height: 20,
          ),
          // 2.命名路由跳转
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
            child: const Text('命名路由跳转'),
          ),
          const SizedBox(
            height: 20,
          ),
          // 3.命名路由跳转传值
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/form', arguments: {
                'id': 20,
                'name': 'zhangsan',
              });
            },
            child: const Text('命名路由跳转传值'),
          ),
        ],
      ),
    );
  }
}
