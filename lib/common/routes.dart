import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/sliverappbar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/text_material_scaffold.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  // 无状态组件导航
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/text_material_scaffold': (context) => const TextMaterialScaffoldWidget(),
  '/listview': (context) => ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  // 有状态组件导航
  '/image': (context) => const ImageWidget(),
  '/sliverappbar': (context) => const SliverAppBarWidget(),
  // 示例导航
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
};
