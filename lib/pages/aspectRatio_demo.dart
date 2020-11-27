import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * AspectRatio设置View的宽高比
 */
class AspectRatioDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        'AspectRatio设置盒子的宽高比',
        Column(
          children: [
            Text(
              '下面View的宽高比是2/1',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 20,
            ),
            HomeContent()
          ],
        ));
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
