import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * 顶部导航条，中间内容区域展示demo
 */

class TabbarSimpleDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('tabbar 顶部导航条 简单使用', HomeContent());
  }
}

/*
 * 有顶部导航栏的TabController
 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('演示顶部tabbar'),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                text: '男装',
              ),
              Tab(
                text: '没有顶部bar',
              ),
              Tab(
                text: '男装',
              ),
              Tab(
                text: '女装',
              ),
              Tab(
                text: '男装',
              ),
              Tab(
                text: '女装',
              ),
              Tab(
                text: '男装',
              ),
              Tab(
                text: '女装',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('男装'),
            HomeContent2(),
            Text('家电'),
            Text('日用快消'),
            Text('日用快消'),
            Text('日用快消'),
            Text('日用快消'),
            Text('日用快消')
          ],
        ),
      ),
    );
  }
}

/*
 * 没有顶部导航栏的TabController
 */
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Expanded(
            child: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: '男装',
                ),
                Tab(
                  text: '女装',
                ),
                Tab(
                  text: '男装',
                ),
                Tab(
                  text: '女装',
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [Text('男装'), Text('女装'), Text('家电'), Text('日用快消')],
        ),
      ),
    );
  }
}
