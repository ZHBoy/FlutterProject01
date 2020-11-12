import 'package:flutter/material.dart';

/*
 * 顶部导航条，中间内容区域展示demo
 */
void main() {
  runApp(MyApp());
}

//自定组件就是类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter title"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//内容区域
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好flutter',
        textDirection: TextDirection.ltr,
        style:
            TextStyle(fontSize: 40.0, color: Color.fromRGBO(2, 243, 122, 1.0)),
      ),
    );
  }
}
