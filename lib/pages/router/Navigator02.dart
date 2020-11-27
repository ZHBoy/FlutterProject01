import 'package:demo001/data/SimpleIntentData.dart';
import 'package:flutter/material.dart';

/*
 * 有状态组件传参数
 */
class NavigatorFullWidgetPage extends StatefulWidget {
  final SimpleIntentData arguments;

  const NavigatorFullWidgetPage({Key key, this.arguments}) : super(key: key);

  @override
  _NavigatorFullWidgetPageState createState() =>
      _NavigatorFullWidgetPageState(arguments: this.arguments);
}

class _NavigatorFullWidgetPageState extends State<NavigatorFullWidgetPage> {
  SimpleIntentData arguments;
  _NavigatorFullWidgetPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${arguments.title}'),
      ),
      body: Column(
        children: [
          Text('${arguments.description}'),
          RaisedButton(
              child: Text('演示替换路由'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                    "navigator03"); //用Navigator03替换Navigator02页面
              }),
          RaisedButton(
              child: Text('演示返回替换路由'),
              onPressed: () {
                Navigator.pushNamed(context, 'navigator04');
              })
        ],
      ),
    );
  }
}
