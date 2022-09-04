import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

final data = <dynamic>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

List listData = [
  {
    "title": 'Candy Shop',
    "author": 'Mohamed Chahin',
    "imageUrl": 'https://www.itying.com/images/flutter/1.png',
    "description":
        'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
  },
  {
    "title": 'Childhood in a picture',
    "author": 'Google',
    "imageUrl": 'https://www.itying.com/images/flutter/2.png',
    "description":
        'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
  },
  {
    "title": 'Alibaba Shop',
    "author": 'Alibaba',
    "imageUrl": 'https://www.itying.com/images/flutter/3.png',
    "description":
        'Dart is a client-optimized language for fast apps on any platform... Dart is a client-optimized language for fast apps on any platform Optimizedfor',
  },
  {
    "title": 'Candy Shop',
    "author": 'Mohamed Chahin',
    "imageUrl": 'https://www.itying.com/images/flutter/4.png',
    "description":
        'Dart is a client-optimized language for fast apps on any platform... Dart is a client-optimized language for fast apps on any platform Optimizedfor',
  },
  {
    "title": 'Tornado',
    "author": 'Mohamed Chahin',
    "imageUrl": 'https://www.itying.com/images/flutter/5.png',
    "description":
        'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
  },
  {
    "title": 'Undo',
    "author": 'Mohamed Chahin',
    "imageUrl": 'https://www.itying.com/images/flutter/6.png',
    "description":
        'Flutter is Google’s mobile UI framework for crafting high-quality native experiences on iOS and Android in record time. Flutter works with existing',
  },
  {
    "title": 'white-dragon',
    "author": 'Mohamed Chahin',
    "imageUrl": 'https://www.itying.com/images/flutter/7.png',
    "description":
        'Dart is a client-optimized language for fast apps on any platform... Dart is a client-optimized language for fast apps on any platform Optimizedfor',
  }
];

// 颜色转为文字
String colorString(dynamic color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

// 无状态组件
final statelessList = <ContainerInfo>[
  ContainerInfo('Container', '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等。',
      '/container'),
  ContainerInfo(
      'Text', '用于容纳单个子组件的容器组件,拥有的属性非常多，足够满足适应需求，核心样式由style属性控制。', '/text'),
  ContainerInfo('TextMaterialScaffold', '用 MaterialApp 和 Scaffold 两个组件装饰 App',
      '/text_material_scaffold'),
  ContainerInfo(
      'ListView',
      '可容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
      '/listview'),
  ContainerInfo(
      'GridView',
      '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造，有内边距、是否反向、滑动控制等属性。',
      '/gridview'),
  ContainerInfo('各种类型的Button组件', '各种类型的Button组件', '/button'),
  ContainerInfo('对话框', '各种对话框', '/dialog'),
];

// 有状态组件
final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片，可以从文件、内存、网络、资源里加载，可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      'SliverAppBar', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/sliverappbar'),
  ContainerInfo('FloatingActionButton组件', '', '/floating_action_button'),
  ContainerInfo('Form组件', 'Form组件，简单的登录表单', '/form_login'),
  ContainerInfo('Form常用组件', 'Checkbox、Radio及Switch', '/check_radio_switch'),
  ContainerInfo('表单实现学员登记系统', '表单实现学员登记系统', '/form_demo'),
  ContainerInfo('日期和时间', '日期组件和时间组件', '/date_time'),
  ContainerInfo('第三方日期选择组件', '第三方日期选择组件', '/date_time_select'),
  ContainerInfo('Swiper轮播图组件', '第三方轮播图组件', '/swiper'),
];

// 多渲染组件
final multiRenderList = <ContainerInfo>[
  ContainerInfo('Padding', '边距组件', '/padding'),
  ContainerInfo('Row', '水平布局组件', '/row'),
  ContainerInfo('Column', '垂直布局组件', '/column'),
  ContainerInfo('Expanded', 'Expanded组件', '/expanded'),
  ContainerInfo('布局例子', '布局例子', '/layout_demo'),
  ContainerInfo(
      'Stack',
      '堆叠布局，可容纳多个组件，以堆叠的方式摆放子组件，后放置的在上面。拥有alignment属性，可与Positioned组件联用，精确定位。',
      '/stack'),
  ContainerInfo('堆叠布局与Align结合', '堆叠布局与Align结合', '/stack_align'),
  ContainerInfo('堆叠布局与Positioned结合', '堆叠布局与Positioned结合', '/stack_positioned'),
  ContainerInfo(
      'Wrap',
      '包裹布局，可容纳多个组件，按照指定方向依次排布，可以很方便地处理子组件之间的间距，越界时自动换行。拥有主轴和交叉轴的对齐方式，比较灵活。',
      '/wrap'),
  ContainerInfo('AspectRation组件', 'AspectRation组件', '/aspect_ration'),
  ContainerInfo('Card组件', 'Card组件', '/card'),
  ContainerInfo('AppBar基础使用', 'AppBar基础使用', '/appbar'),
  ContainerInfo('AppBar自定义顶部Tab切换', 'AppBar自定义顶部Tab切换', '/appbar_tab_bar'),
  ContainerInfo('AppBar自定义Tab切换，Tab在最顶部', 'AppBar自定义Tab切换，Tab在最顶部',
      '/appbar_top_tab_bar'),
  ContainerInfo('用TabController实现Tab切换', 'AppBar用TabController实现Tab切换',
      '/appbar_tab_controller'),
  ContainerInfo('UserAccountsDrawerHeader组件', 'UserAccountsDrawerHeader组件',
      '/useraccounts_drawerheader'),
];
