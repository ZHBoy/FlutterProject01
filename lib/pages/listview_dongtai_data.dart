import 'package:flutter/material.dart';
import 'package:demo001/data/listdata.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * ListView动态列表
 */

//自定组件就是类
class ListViewFromDataDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('ListView动态列表', HomeContent2());
  }
}

//循环外部列表
class HomeContent extends StatelessWidget {
  List<Widget> _getData() {
    var d = listData.map((value) {
      return ListTile(leading: Image.network(value['title']));
    });
    return d.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

//循环列表
class HomeContent1 extends StatelessWidget {
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 100; i++) {
      list.add(ListTile(title: Text('列表的第 $i 个条目')));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

//listView builder
class HomeContent2 extends StatelessWidget {
  Widget _getListData(context, index) {
    return ListTile(leading: Image.network(listData[index]['title']));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
