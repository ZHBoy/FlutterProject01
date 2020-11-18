import 'package:flutter/material.dart';
import 'bottompage/homePage.dart';
import 'bottompage/recommendPage.dart';
import 'bottompage/personalPage.dart';

/*
 * bottomNavigationBar使用
 */
void main() {
  runApp(MyApp());
}

//自定组件就是类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}

/*
 * 底部tab抽离
 */
class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  //选中的条目
  var _currentIndex = 0;

  //tab对应的body页面
  var _pageList = [HomePage(), RecommendPage(), PersonalPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter bottomNavigationBar使用"),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: this._currentIndex,
        items: [
          BottomNavigationBarItem(label: "首页", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "推荐", icon: Icon(Icons.recommend)),
          BottomNavigationBarItem(label: "我的", icon: Icon(Icons.person))
        ],
        onTap: (value) {
          setState(() {
            this._currentIndex = value.toInt();
          });
        },
      ),
    );
  }
}
