import 'package:demo001/tabs/tabs.dart';
import 'package:flutter/material.dart';

import '../pages/router/Navigator01.dart';
import '../pages/router/Navigator02.dart';
import '../pages/router/Navigator03.dart';
import '../pages/router/Navigator04.dart';
import '../pages/container_Text.dart';
import '../pages/image_radius.dart';
import '../pages/listview_simple.dart';
import '../pages/listview_dongtai_data.dart';
import '../pages/girdview.dart';
import '../pages/expanded_row_column.dart';
import '../pages/stack_align_positioned.dart';
import '../pages/card_demo.dart';
import '../pages/aspectRatio_demo.dart';
import '../pages/wrapdemo.dart';
import '../pages/statefullwidget_demo.dart';
import '../pages/router/test_router.dart';
import '../pages/tabbar_simple.dart';
import '../pages/tabbar_custom_full.dart';
import '../pages/buttonDemo.dart';
import '../pages/checkbox_checkboxlisttile.dart';
import '../pages/TextFieldDemo.dart';
import '../pages/RadioDemo.dart';
import '../pages/ThreeLibForDateFormat.dart';
import '../pages/DialogDemoPage.dart';
import '../pages/NetDioSimpleDemoPage.dart';

/*
 * 路由配置类
 */
final routes = {
  '/': (context, {arguments}) => Tabs(),
  //无状态组件
  'navigator01': (context, {arguments}) =>
      NavigatorLessWidgetPage(arguments: arguments),

  //有状态组件
  'navigator02': (context, {arguments}) =>
      NavigatorFullWidgetPage(arguments: arguments),
  //演示替换路由
  'navigator03': (context, {arguments}) => Navigator03(),
  //演示返回根路由
  'navigator04': (context, {arguments}) => Navigator04(),

  //路由传值、替换路由、返回跟路由
  'RouterDemoPage': (context, {arguments}) => RouterDemoPage(),

  //Container Text组件使用
  'ContainerTextDemoPage': (context, {arguments}) => ContainerTextDemoPage(),
  //图片组件介绍
  'ImageRadiusDemoPage': (context, {arguments}) => ImageRadiusDemoPage(),
  //listview 简单使用
  'ListViewSimpleDemoPage': (context, {arguments}) => ListViewSimpleDemoPage(),
  //listview 动态列表
  'ListViewFromDataDemoPage': (context, {arguments}) =>
      ListViewFromDataDemoPage(),
  //GirdView使用
  'GirdViewDemoPage': (context, {arguments}) => GirdViewDemoPage(),
  //Column Row Expanded组件使用
  'ColumnRowExpandedDemoPage': (context, {arguments}) =>
      ColumnRowExpandedDemoPage(),
  //Stack与Align、positioned,实现层叠布局
  'StackDemoPage': (context, {arguments}) => StackDemoPage(),
  //Card卡片组件
  'CardDemoPage': (context, {arguments}) => CardDemoPage(),
  //AspectRatio设置View的宽高比
  'AspectRatioDemoPage': (context, {arguments}) => AspectRatioDemoPage(),
  //流式布局
  'WarpDemoPage': (context, {arguments}) => WarpDemoPage(),
  // flutter statefullwidget setstate作用是改变数据，重新渲染
  'StateFullWidgetDemoPage': (context, {arguments}) =>
      StateFullWidgetDemoPage(),
  // tabbar 顶部导航条 简单使用
  'TabbarSimpleDemoPage': (context, {arguments}) => TabbarSimpleDemoPage(),
  // 自定义TabBarController
  'TabBarControllerPage': (context, {arguments}) => TabBarControllerPage(),
  // 按钮相关详解
  'ButtonDemoPage': (context, {arguments}) => ButtonDemoPage(),
  // CheckBox和CheckboxListTile 使用
  'CheckBoxAndCheckboxListTileDemoPage': (context, {arguments}) =>
      CheckBoxAndCheckboxListTileDemoPage(),
  // 输入框TextField使用
  'TextFieldDemoPage': (context, {arguments}) => TextFieldDemoPage(),

  //单选框使用 Radio RadioListTile Switch
  'RadioDemoPage': (context, {arguments}) => RadioDemoPage(),

  //第三方库dateformat库使用
  'DateFormatDemoPage': (context, {arguments}) => DateFormatDemoPage(),

  //dialog弹框示例
  'DialogPage': (context, {arguments}) => DialogPage(),

  //网络层dio的使用
  'NetDioSimpleDemoPage': (context, {arguments}) => NetDioSimpleDemoPage(),
};

//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      print(settings.arguments.toString());
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
