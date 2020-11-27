import 'package:demo001/data/SimpleIntentData.dart';
import 'package:flutter/material.dart';
import '../../widgets/BaseThemeBar.dart';

/*
 * 路由传值、替换路由、返回跟路由
 */
class RouterDemoPage extends StatefulWidget {
  @override
  _RouterDemoPageState createState() => _RouterDemoPageState();
}

class _RouterDemoPageState extends State<RouterDemoPage> {
  SimpleIntentData mSimpleIntentData2 =
      new SimpleIntentData('有状态组件', "无状态组件传过来2222222");
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        "路由传值、替换路由、返回跟路由",
        Center(
          child: Column(
            children: [
              RaisedButton(
                  child: Text('跳转到无状态组件页面，并传值'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'navigator01',
                        arguments: 122222);
                  }),
              RaisedButton(
                  child: Text('跳转到有状态组件页面，并传值'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'navigator02',
                        arguments: mSimpleIntentData2);
                  })
            ],
          ),
        ));
  }
}
