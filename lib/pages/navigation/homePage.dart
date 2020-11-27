import 'package:flutter/material.dart';
import '../../data/homeListData.dart';

/*
 * 首页
 */
class HomePage extends StatelessWidget {
  Widget _getListData(context, index) {
    return Column(children: [
      ListTile(
        title:
            Text("${(index + 1).toString()}. ${homeListData[index]['name']}"),
        onTap: () {
          //设置点击
          Navigator.pushNamed(context, homeListData[index]['navigation']);
        },
      ),
      Divider(height: 1.0, indent: 0.0, color: Colors.grey)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeListData.length,
      itemBuilder: this._getListData,
    );
  }
}
