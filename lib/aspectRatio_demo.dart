import 'package:flutter/material.dart';

/*
 * AspectRatio设置盒子的宽高比
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
          title: Text("AspectRatio设置盒子的宽高比"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//AspectRatio设置盒子的宽高比
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0 / 1.0, //设置宽高比为2/1。具体指的是下面Container盒子
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
