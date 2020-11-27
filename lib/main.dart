import 'package:flutter/material.dart';
import 'routers/routers.dart';

/*
 * 设置路由
 */
void main() {
  runApp(MyApp());
}

//自定组件就是类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
