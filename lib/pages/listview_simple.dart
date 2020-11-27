import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * listview 列表组件简单使用
 */

//自定组件就是类
class ListViewSimpleDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        "列表组件简单使用",
        ListView(
          children: [
            Text(
              'Listview中使用ListTile',
              style: TextStyle(fontSize: 26),
            ),
            HomeContent(),
            Text(
              'listview中使用其他的widgets',
              style: TextStyle(fontSize: 26),
            ),
            HomeContent2(),
            Text(
              'listview水平列表',
              style: TextStyle(fontSize: 26),
            ),
            HomeContent3()
          ],
        ));
  }
}

//listview中使用ListTile
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          leading: Icon(
            Icons.search,
            color: Colors.red,
            size: 30.0,
          ),
          title: Text(
            '一级标题',
            style: TextStyle(fontSize: 18.0),
          ),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
          trailing: Icon(
            Icons.deck_rounded,
            color: Colors.red,
          ),
        ),
        ListTile(
          leading: Image.network(
              'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605168143&di=e92c5258dc948d103b1c85d53fe4f7e4&src=http://a0.att.hudong.com/30/29/01300000201438121627296084016.jpg'),
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        )
      ],
    );
  }
}

//listview中使用其他的widgets
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10.0),
      children: [
        Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605168143&di=e92c5258dc948d103b1c85d53fe4f7e4&src=http://a0.att.hudong.com/30/29/01300000201438121627296084016.jpg'),
        Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605168143&di=e92c5258dc948d103b1c85d53fe4f7e4&src=http://a0.att.hudong.com/30/29/01300000201438121627296084016.jpg'),
        Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605168143&di=e92c5258dc948d103b1c85d53fe4f7e4&src=http://a0.att.hudong.com/30/29/01300000201438121627296084016.jpg'),
        Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605168143&di=e92c5258dc948d103b1c85d53fe4f7e4&src=http://a0.att.hudong.com/30/29/01300000201438121627296084016.jpg'),
        Image.network(
            'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1605168143&di=e92c5258dc948d103b1c85d53fe4f7e4&src=http://a0.att.hudong.com/30/29/01300000201438121627296084016.jpg'),
      ],
    );
  }
}

//listview水平列表
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView(
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 180.0,
            height: 100.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            width: 180.0,
            height: 100.0,
            color: Colors.black45,
          ),
          Container(
            width: 180.0,
            height: 100.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            height: 100.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
