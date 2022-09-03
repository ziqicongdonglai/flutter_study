import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/style.dart';

class ListViewWidget extends StatelessWidget {
 final List list = [];

   ListViewWidget({Key? key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("这是第$i条数据");
    }
    if (kDebugMode) {
      print(list);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '列表组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                child: const Text(
                  '列表显示的领军人物，容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
                  style: descStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '基本列表',
                  style: subTitleStyle,
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("this is list",
                          style: TextStyle(fontSize: 28.0),
                      ),
                      subtitle: Text('this is list this list'),
                    ),
                    ListTile(
                      title: Text("this is list"),
                      subtitle: Text('this is list this list'),
                      trailing: Icon(Icons.phone),
                    ),
                    ListTile(
                      title: Text("this is list"),
                      subtitle: Text('this is list this list'),
                    ),
                    ListTile(
                      title: Text("this is list"),
                      subtitle: Text('this is list this list'),
                    ),
                    ListTile(
                      title: Text("this is list"),
                      subtitle: Text('this is list this list'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '水平列表',
                  style: subTitleStyle,
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 180,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      width: 180,
                      color: Colors.amber,
                      child: ListView(
                        children: <Widget>[
                          Image.network('https://zqcdl-pic.oss-cn-hangzhou.aliyuncs.com/avatar/me.jpg'),
                          const SizedBox(height: 16.0),
                          const Text(
                            '这是一个文本信息',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 180,
                      color: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '动态列表组件及循环动态数据',
                  style: subTitleStyle,
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.phone),
                      title: Text('${list[index]}'),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}