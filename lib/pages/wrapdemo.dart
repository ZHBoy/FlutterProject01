import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * flutter 流式布局
 */
class WarpDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('流式布局', WrapContent());
  }
}

class WrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal, //内容排列方式。横向排列还是纵向排列
      spacing: 10, //横向间距
      runSpacing: 10.0, //纵向间距
      runAlignment: WrapAlignment.center, //内容位置
      children: [
        MyButton('西游记'),
        MyButton('西ggggg游记'),
        MyButton('西游dd记'),
        MyButton('西游ddjdfddfj记'),
        MyButton('西ggggg游记'),
        MyButton('西游sfdd记'),
        MyButton('西游fbfbfghg记')
      ],
    );
  }
}

//内容区域
class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        this.text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      color: Color.fromARGB(255, 255, 0, 0),
      onPressed: () {}, //需要加点击事件，否则主题颜色设置没效果
    );
  }
}
