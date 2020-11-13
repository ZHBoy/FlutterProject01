import 'package:flutter/material.dart';
import 'listdata.dart';

/*
 * girdview组件使用
 */
void main() {
  runApp(MyApp());
}

//自定组件就是类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter girdview组件"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//内容区域
class HomeContent extends StatelessWidget {
  /*
  使用外部数据
   */
  // List<Widget> _getData() {
  //   var list = listData.map((value) {
  //     return Container(
  //       child: Column(
  //         children: [
  //           Image.network(
  //             value['title'],
  //             // fit: BoxFit.cover,
  //           )
  //         ],
  //       ),
  //       decoration: BoxDecoration(color: Color.fromRGBO(124, 124, 124, 1)),
  //     );
  //   });
  //   return list.toList();
  // }

  /*
  使用外部数据,girdview.builder方式
   */
  Widget _getData(context, index) {
    return Container(
      child: Column(
        children: [
          Image.network(
            listData[index]['title'],
            // fit: BoxFit.cover,
          )
        ],
      ),
      decoration: BoxDecoration(color: Color.fromRGBO(124, 124, 124, 1)),
    );
  }

  //本地假数据
  // List<Widget> _getData() {
  //   List<Widget> list = new List();
  //   for (var i = 0; i < 100; i++) {
  //     list.add(Container(
  //       child: Text(
  //         '条目$i',
  //         style: TextStyle(color: Colors.white, fontSize: 24.0),
  //       ),
  //       color: Colors.red,
  //       alignment: Alignment.center, //盒子中内容居中
  //     ));
  //   }
  //   return list;
  // }

  /*
   * GridView.count实现方式
   */
  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //     crossAxisCount: 2, //列数
  //     crossAxisSpacing: 10.0, //左右间距
  //     mainAxisSpacing: 10.0, //上下间距
  //     // childAspectRatio: 0.5, //调整宽:高比例
  //     padding: EdgeInsets.all(10.0),
  //     children: this._getData(),
  //   );
  // }

  /*
   * GridView.builder实现方式
   */
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //列数
        crossAxisSpacing: 10.0, //左右间距
        mainAxisSpacing: 10.0, //上下间距
        // childAspectRatio: 0.5, //调整宽:高比例
      ),
      itemCount: listData.length,
      itemBuilder: this._getData,
    );
  }
}
