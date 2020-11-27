import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * Stack与Align、positioned,实现层叠布局
 */
class StackDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('Stack与Align、positioned,实现层叠布局', HomeContent());
  }
}

//内容区域
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 180.0,
        color: Colors.yellow,
        child: Stack(
          children: [
            Align(
              child: Image.network(
                'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605512237&di=2e8e1fcd06c9a72ad3c330c463e38d2e&src=http://a0.att.hudong.com/52/62/31300542679117141195629117826.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 105.0,
              child: Text(
                '风景图',
                style: TextStyle(color: Colors.red, fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
