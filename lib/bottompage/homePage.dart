import 'package:demo001/data/SimpleIntentData.dart';
import 'package:flutter/material.dart';

/*
 * 首页
 */
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SimpleIntentData mSimpleIntentData2 =
      new SimpleIntentData('有状态组件', "无状态组件传过来2222222");
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
              child: Text('跳转到无状态组件页面，并传值'),
              onPressed: () {
                Navigator.pushNamed(context, 'navigator01', arguments: 122222);
              }),
          RaisedButton(
              child: Text('跳转到有状态组件页面，并传值'),
              onPressed: () {
                Navigator.pushNamed(context, 'navigator02',
                    arguments: mSimpleIntentData2);
              })
        ],
      ),
    );
  }
}
