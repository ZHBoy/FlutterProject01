import 'package:flutter/material.dart';
import '../tabs/tabs.dart';

/*
 * 演示返回跟路由
 */
class Navigator04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator04'),
      ),
      body: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            //第一个参数表示要跳转的页面 ， 第二个页面将前面所有页面置为空
            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new Tabs()),
                (route) => false);
          }),
    );
  }
}
