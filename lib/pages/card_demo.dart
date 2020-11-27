import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * Card卡片组件
 */
class CardDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('Card卡片组件', HomeContent());
  }
}

//Card卡片组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                title: Text('标题'),
                subtitle: Text('二级标题'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                title: Text('标题'),
                subtitle: Text('二级标题'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                title: Text('标题'),
                subtitle: Text('二级标题'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 3.0 / 2.0,
                child: Image.network(
                  'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605512237&di=2e8e1fcd06c9a72ad3c330c463e38d2e&src=http://a0.att.hudong.com/52/62/31300542679117141195629117826.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('标题'),
                subtitle: Text('二级标题'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
