import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  final int index;

  const FloatingActionButtonWidget({Key? key, this.index = 0})
      : super(key: key);

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState(index);
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  int currentIndex = 1;

  _FloatingActionButtonWidgetState(currentIndex);

  final List _pageList = [
    const Center(
      child: Text('首页'),
    ),
    const Center(
      child: Text('分类'),
    ),
    const Center(
      child: Text('设置'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('底部凸起导航'),
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentIndex = 1;
            });
          },
          backgroundColor: currentIndex == 1 ? Colors.green : Colors.grey,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // 配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        iconSize: 36.0,
        // icon的大小
        fixedColor: Colors.green,
        // 选中的颜色
        type: BottomNavigationBarType.fixed,
        // 配置底部tabs可以有多个按钮
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
    );
  }
}
