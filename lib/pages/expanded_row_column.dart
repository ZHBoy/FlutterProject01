import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * Column Row Expanded组件使用
 */

class ColumnRowExpandedDemoPage extends StatefulWidget {
  @override
  _ColumnRowExpandedDemoPageState createState() =>
      _ColumnRowExpandedDemoPageState();
}

class _ColumnRowExpandedDemoPageState extends State<ColumnRowExpandedDemoPage> {
  Widget _widget = HomeContent();

  Widget _getContentWidget() {
    return _widget;
  }

  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        'row column expanded组件使用',
        Column(
          children: [
            Row(children: [
              RaisedButton(
                  child: Text('Column'),
                  onPressed: () {
                    setState(() {
                      this._widget = HomeContent();
                    });
                  }),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  child: Text('Row组件'),
                  onPressed: () {
                    setState(() {
                      this._widget = HomeContent2();
                    });
                  }),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  child: Text('Expanded'),
                  onPressed: () {
                    setState(() {
                      this._widget = HomeContent3();
                    });
                  }),
            ]),
            SizedBox(
              height: 10,
            ),
            Expanded(child: _getContentWidget())
          ],
        ));
  }
}

//Column组件使用
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //分割类型
        crossAxisAlignment: CrossAxisAlignment.center, //交叉轴,相对于外部容器的位置
        children: [
          IconContainer(
            Icons.category,
            bgColor: Colors.red,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.yellow,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.blue,
            iconColor: Colors.white,
          )
        ],
      ),
    );
  }
}

//Row组件使用
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //分割类型
        crossAxisAlignment: CrossAxisAlignment.center, //交叉轴,相对于外部容器的位置
        children: [
          IconContainer(
            Icons.category,
            bgColor: Colors.red,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.yellow,
            iconColor: Colors.white,
          ),
          IconContainer(
            Icons.category,
            bgColor: Colors.blue,
            iconColor: Colors.white,
          )
        ],
      ),
    );
  }
}

//Expanded组件使用
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //分割类型
        crossAxisAlignment: CrossAxisAlignment.center, //交叉轴,相对于外部容器的位置
        children: [
          Expanded(
              child: IconContainer(
                Icons.category,
                bgColor: Colors.red,
                iconColor: Colors.white,
              ),
              flex: 1),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: IconContainer(
                Icons.category,
                bgColor: Colors.yellow,
                iconColor: Colors.white,
              ),
              flex: 1),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: IconContainer(
                Icons.category,
                bgColor: Colors.blue,
                iconColor: Colors.white,
              ),
              flex: 2),
        ],
      ),
    );
  }
}

//自定义图片组件
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  IconData iconData;
  Color bgColor = Colors.blue;
  Color iconColor = Colors.yellow;

  IconContainer(this.iconData, {this.bgColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        height: 100.0,
        color: this.bgColor,
        child: Icon(this.iconData, color: this.iconColor));
  }
}
