import 'package:flutter/material.dart';

/*
 * 自定义TabBarController 
 * 
 */
class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    //生命周期函数，组件一加载就会触发
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义TabBarController"),
        bottom: TabBar(
          controller: this._tabController,
          tabs: [Text('男装'), Text('女装')],
        ),
        backgroundColor: Colors.red,
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [Center(child: Text('男装')), Center(child: Text('女装'))],
      ),
    );
  }
}
