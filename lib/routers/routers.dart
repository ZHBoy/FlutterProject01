import 'package:demo001/tabs/tabs.dart';
import 'package:flutter/material.dart';

import '../pages/Navigator01.dart';
import '../pages/Navigator02.dart';
import '../pages/Navigator03.dart';
import '../pages/Navigator04.dart';

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
