import 'package:flutter/material.dart';
import 'package:flutter_demo/page/stateful_widget_page.dart';
import 'package:flutter_demo/page/stateless_widget_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategoryPageState();
}

// AppBar 默认的实例,有状态
class _CategoryPageState extends State with SingleTickerProviderStateMixin {
  // tab标签
  final tabs = ['无状态', '有状态', '单渲染', '多渲染', '可折叠', '可寄居', '未分类'];
  // 标签页面
  final tabPages = [
    // 无状态
    const StatelessWidgetPage(),
    // 有状态
    const StatefulWidgetPage(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  // 延迟初始化 定义变量没有赋值的时候需要在前面加late
  // 标签选择变化控制器
  late TabController _tabController;

  // 初始化
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  // 被移除（销毁）
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('分类'),
        centerTitle: true,
        // actions 程序栏右边
        actions: const <Widget>[
          Icon(Icons.settings),
        ],
        // 程序栏底部
        bottom: _buildTabBar(),
      ),
      body: _buildTableBarView(),
    );
  }

  // 标签栏
  PreferredSizeWidget _buildTabBar() => TabBar(
        // 是否可滚动
        isScrollable: true,
        // 标签选择变化控制器
        controller: _tabController,
        // 指示器颜色
        indicatorColor: Colors.orangeAccent,
        // 一系列标签控件
        tabs: tabs.map((e) => Tab(text: e)).toList(),
      );

  // 不同标签对应的页面
  Widget _buildTableBarView() => TabBarView(
        controller: _tabController,
        children: tabPages.map((e) => e).toList(),
      );
}
