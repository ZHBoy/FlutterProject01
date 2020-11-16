import 'package:flutter/material.dart';

/*
 * row column expanded组件使用
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
          title: Text("row column expanded组件使用"),
        ),
        body: HomeContent3(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//Column组件使用
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //分割类型
        crossAxisAlignment: CrossAxisAlignment.center, //交叉轴,相对于外部容器的位置
        children: [
          IconContainer(
            Icons.category,
            bgColor: Colors.red,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.yellow,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.blue,
            iconColor: Colors.white,
          )
        ],
      ),
    );
  }
}

//Row组件使用
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //分割类型
        crossAxisAlignment: CrossAxisAlignment.center, //交叉轴,相对于外部容器的位置
        children: [
          IconContainer(
            Icons.category,
            bgColor: Colors.red,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.yellow,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.blue,
            iconColor: Colors.white,
          )
        ],
      ),
    );
  }
}

//Expanded组件使用
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //分割类型
        crossAxisAlignment: CrossAxisAlignment.center, //交叉轴,相对于外部容器的位置
        children: [
          Expanded(
              child: IconContainer(
                Icons.category,
                bgColor: Colors.red,
                iconColor: Colors.white,
              ),
              flex: 1),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: IconContainer(
                Icons.category,
                bgColor: Colors.yellow,
                iconColor: Colors.white,
              ),
              flex: 1),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: IconContainer(
                Icons.category,
                bgColor: Colors.blue,
                iconColor: Colors.white,
              ),
              flex: 2),
        ],
      ),
    );
  }
}

//自定义图片组件
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  IconData iconData;
  Color bgColor = Colors.blue;
  Color iconColor = Colors.yellow;

  IconContainer(this.iconData, {this.bgColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        height: 100.0,
        color: this.bgColor,
        child: Icon(this.iconData, color: this.iconColor));
  }
}
