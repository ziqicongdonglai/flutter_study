import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/form_page.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/bottom/search_page.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/multi/appbar_custom_tabbar_page.dart';
import 'package:flutter_demo/widget/multi/appbar_custom_toptabbar_page.dart';
import 'package:flutter_demo/widget/multi/appbar_page.dart';
import 'package:flutter_demo/widget/multi/appbar_tabcontroller_page.dart';
import 'package:flutter_demo/widget/multi/appbar_useraccouts_drawer_page.dart';
import 'package:flutter_demo/widget/multi/aspectratio_widget.dart';
import 'package:flutter_demo/widget/multi/card_widget.dart';
import 'package:flutter_demo/widget/multi/cardlayout_widget.dart';
import 'package:flutter_demo/widget/multi/column_widget.dart';
import 'package:flutter_demo/widget/multi/expanded_widget.dart';
import 'package:flutter_demo/widget/multi/layout_widget.dart';
import 'package:flutter_demo/widget/multi/padding_widget.dart';
import 'package:flutter_demo/widget/multi/row_widget.dart';
import 'package:flutter_demo/widget/multi/stack_widget1.dart';
import 'package:flutter_demo/widget/multi/stack_widget2.dart';
import 'package:flutter_demo/widget/multi/stack_widget3.dart';
import 'package:flutter_demo/widget/multi/wrap_widget.dart';
import 'package:flutter_demo/widget/stateful/checkbox_radio_switch_widget.dart';
import 'package:flutter_demo/widget/stateful/date_picker_pub_widget.dart';
import 'package:flutter_demo/widget/stateful/date_widget.dart';
import 'package:flutter_demo/widget/stateful/floating_actionbutton_widget.dart';
import 'package:flutter_demo/widget/stateful/form_demo_widget.dart';
import 'package:flutter_demo/widget/stateful/form_widget.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/sliverappbar_widget.dart';
import 'package:flutter_demo/widget/stateful/swiper_widget.dart';
import 'package:flutter_demo/widget/stateless/button_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/dialog_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/text_material_scaffold.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';

// 配置路由，定义Map类型的routes，Key为String类型，Value为Function类型
final Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  '/search': (context) => const SearchPage(title: '搜索'),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  // 无状态组件导航
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/text_material_scaffold': (context) => const TextMaterialScaffoldWidget(),
  '/listview': (context) => ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  '/dialog': (context) => const DialogWidget(),
  // 有状态组件导航
  '/image': (context) => const ImageWidget(),
  '/sliverappbar': (context) => const SliverAppBarWidget(),
  '/floating_action_button': (context) => const FloatingActionButtonWidget(),
  '/form_login': (context) => const FormWidget(),
  '/check_radio_switch': (context) => const CheckboxRadioSwitchWidget(),
  '/form_demo': (context) => const FormDemoWidget(),
  '/date_time': (context) => const DateWidget(),
  '/date_time_select': (context) => const DatePickerPubWidget(),
  '/swiper': (context) => const SwiperWidget(),
  // 布局例子导航
  '/padding': (context) => const PaddingWidget(),
  '/row': (context) => const RowWidget(),
  '/column': (context) => const ColumnWidget(),
  '/expanded': (context) => const ExpandedWidget(),
  '/layout_demo': (context) => const LayoutWidget(),
  '/stack': (context) => const StackWidget1(),
  '/stack_align': (context) => const StackWidget2(),
  '/stack_positioned': (context) => const StackWidget3(),
  '/wrap': (context) => const WrapWidget(),
  '/aspect_ration': (context) => const AspectRatioWidget(),
  '/card': (context) => const CardWidget(),
  '/card_layout': (context) => const CardLayoutWidget(),
  '/button': (context) => const ButtonWidget(),

  '/appbar': (context) => const AppBarPage(),
  '/appbar_tab_bar': (context) => const AppBarCustomTabBarPage(),
  '/appbar_top_tab_bar': (context) => const AppBarCustomTopTabBarPage(),
  '/appbar_tab_controller': (context) => const AppBarTabControllerPage(),
  '/useraccounts_drawerheader': (context) => const AppBarUserAccountsDrawerPage(),
  // 示例导航
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
