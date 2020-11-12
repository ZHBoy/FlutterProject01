import 'package:flutter/material.dart';

/*
 * listview 列表组件简单使用
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
          title: Text("列表组件简单使用"),
        ),
        body: HomeContent3(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//listview中使用ListTile
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
