import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';
/*
 * container(类似与前端里的div)
 * text组件使用
 */

//自定组件就是类
class ContainerTextDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar("Container Text组件使用", HomeContent());
  }
}

//内容区域
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'container组件 text组件 简单使用container组件 text组件 简单使用',
          textAlign: TextAlign.left, //文字位置状态（居中、居左等）
          overflow: TextOverflow.ellipsis, //文字换行展示
          textScaleFactor: 2, //字体放大几倍
          maxLines: 2, //文字最大行数
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w300, //字体粗细
              fontStyle: FontStyle.italic, //字体倾斜
              decoration: TextDecoration.lineThrough, //文本装饰线
              decorationColor: Colors.black, //装饰线颜色
              decorationStyle: TextDecorationStyle.wavy,
              letterSpacing: 2.0 //字间距
              ), //装饰线风格 实线、虚线、波浪等
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))), //圆角
        padding: EdgeInsets.all(10), //内边距
        transform: Matrix4.rotationZ(0.3), //对container容器进行一些旋转、平移、透明度的设置等
        alignment: Alignment.center, //container内不元素对齐方式
      ), //外层布局，类似div中的div
    );
  }
}
