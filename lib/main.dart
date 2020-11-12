import 'package:flutter/material.dart';

/*
 *图片组件使用 本地图片 远程图片
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
          title: Text("图片组件的使用"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//图片相关属性
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'images/luckly_button_start.png', //本地图片需要在pubspec.yaml配置所有图片的路径
          // child: Image.network(
          //   'https://goss.veer.com/creative/vcg/veer/800water/veer-308713666.jpg',//远程图片的配置
          color: Colors.red, //图片的背景颜色通常与colorBlendMode混合使用
          colorBlendMode: BlendMode.screen,
          alignment: Alignment.bottomRight, //图片的显示位置
          fit: BoxFit.cover, //cover(充满整个容器，保持不变形) fill（充满屏幕）
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}

//ClipOval实现圆形图片
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            'https://goss.veer.com/creative/vcg/veer/800water/veer-308713666.jpg',
            width: 300.0,
            height: 300.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//使用BoxDecoration实现圆角图片
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(150),
            image: DecorationImage(
                image: NetworkImage(
                    'https://goss.veer.com/creative/vcg/veer/800water/veer-308713666.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
