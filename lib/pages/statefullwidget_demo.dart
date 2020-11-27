import 'package:flutter/material.dart';

import '../widgets/BaseThemeBar.dart';

/*
 * flutter statefullwidget 
 * setstate作用是改变数据，重新渲染
 */
class StateFullWidgetDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar("statefullwidget有状态组件", TextFullWidgetState2());
  }
}

//自定义有状态组件
class TestFullWidget extends StatefulWidget {
  @override
  _TestFullWidgetState createState() => _TestFullWidgetState();
}

//简单更改列表
class _TestFullWidgetState extends State<TestFullWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Chip(label: Text(this.count.toString())),
          RaisedButton(
              child: Text('改变'),
              onPressed: () {
                setState(() {
                  this.count++;
                });
              })
        ],
      ),
    );
  }
}

class TextFullWidgetState2 extends StatefulWidget {
  @override
  _TextFullWidgetState2State createState() => _TextFullWidgetState2State();
}

class _TextFullWidgetState2State extends State<TextFullWidgetState2> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this.list.map((value) {
            return ListTile(title: Text(value));
          }).toList(),
        ),
        SizedBox(
          height: 40.0,
        ),
        RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.list.add('条目111111111');
                this.list.add('条目222222222');
              });
            })
      ],
    );
  }
}
