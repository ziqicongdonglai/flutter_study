import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/style.dart';

final data = List.generate(128, (i) => Color(0xFF61afef - 2 * i));

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(230, 230, 230, 0.9),
            width: 1.0,
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            const SizedBox(height: 12),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  Widget _getListData2(context, index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.grey,
          width: 1.0,
        )),
        child: Column(
          children: <Widget>[
            Image.network(listData[index]["imageUrl"]),
            const SizedBox(height: 12),
            Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridViewWidget组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'GridViewWidget组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                child: const Text(
                  '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造，有内边距、是否反向、滑动控制等属性。',
                  style: descStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'GridView.extent构造',
                  style: subTitleStyle,
                ),
              ),
              SizedBox(
                height: 200,
                child: GridView.extent(
                  scrollDirection: Axis.horizontal,
                  maxCrossAxisExtent: 80.0,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: _getListData(),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'GridView.count构造',
                  style: subTitleStyle,
                ),
              ),
              SizedBox(
                height: 200,
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: _getListData(),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'GridView.builder构造',
                  style: subTitleStyle,
                ),
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  itemCount: listData.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 横轴元素个数
                      mainAxisSpacing: 20.0, // 纵轴间距
                      crossAxisSpacing: 10.0, // 横轴间距
                      childAspectRatio: 1.0 // 子组件宽高长度比例
                      ),
                  itemBuilder: _getListData2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
