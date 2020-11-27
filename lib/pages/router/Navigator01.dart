import 'package:flutter/material.dart';

/*
 * 演示无状态组件 页面传参 
 * 
 */
class NavigatorLessWidgetPage extends StatelessWidget {
  final Object arguments;
  NavigatorLessWidgetPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无状态组件'),
      ),
      body: Text(
          'this page name is ${arguments != null ? arguments.toString() : 'null'}'),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
