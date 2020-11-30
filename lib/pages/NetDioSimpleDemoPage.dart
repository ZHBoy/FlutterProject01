import 'package:demo001/data/HotSaleBean.dart';
import 'package:demo001/data/OnlyDataBean.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/BaseThemeBar.dart';
import '../dio/DioManager.dart';

/*
 * 网络Dio库的使用
 */
class NetDioSimpleDemoPage extends StatefulWidget {
  @override
  _NetDioSimpleDemoPageState createState() => _NetDioSimpleDemoPageState();
}

class _NetDioSimpleDemoPageState extends State<NetDioSimpleDemoPage> {
  var _items = []; //热卖实体类
  OnlyDataBean onlyDataBean; //更新热卖商品返回bean

  /*
    测试get请求
    可以将baseUrl和接口地址换成自己的测试
   */
  void _testGet() async {
    DioManager.getInstance()
        .get('/calendar/otherFunction/getOnlineSpecialGoods', {},
            //正常回调
            (data) {
      setState(() {
        //更新UI等
        this._items.clear();
        this._items.addAll(HotSaleBean.fromJson(data).data);
        _showToast("获取热卖商品成功");
      });
    },
            //错误回调
            (error) {
      _showToast("请换成自己的接口地址测试");
    });
  }

  /*
  * 测试post请求
  可以将baseUrl和接口地址换成自己的测试
  */
  void _testPost() async {
    DioManager.getInstance().post(
        '/calendar/otherFunction/modifySpecialGoodsByParam',
        FormData.fromMap({
          "id": "1",
          "title": "换妆品",
          "contentDesc": "换妆品",
          "landingPage": "https://s.click.taobao.com/YlCLjtu"
        }),
        //正常回调
        (data) {
      setState(() {
        //更新UI等
        setState(() {
          onlyDataBean = OnlyDataBean.fromJson(data);
          _showToast("修改热卖商品成功，重新获取查看");
        });
      });
    },
        //错误回调
        (error) {
      _showToast("请换成自己的接口地址测试");
    });
  }

  /*
  * toast提示
  */
  _showToast(String s) {
    Fluttertoast.showToast(
        msg: s,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.grey,
        fontSize: 16,
        toastLength: Toast.LENGTH_SHORT,
        textColor: Colors.white);
  }

  /*
   * 热卖商品列表
   */
  Widget _getListData(context, index) {
    return ListTile(
      title: Text(this._items[index].title),
      subtitle: Text(this._items[index].contentDesc),
    );
  }

  @override
  void initState() {
    super.initState();
    // _testGet();
    // _testPost();
  }

  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        '测试使用dio网路库',
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              RaisedButton(
                  child: Text('修改热卖商品'),
                  onPressed: () {
                    setState(() {
                      _testPost();
                    });
                  }),
              RaisedButton(
                  child: Text('获取热卖商品'),
                  onPressed: () {
                    setState(() {
                      _testGet();
                    });
                  }),
              Expanded(
                  child: ListView.builder(
                      itemBuilder: _getListData, itemCount: this._items.length))
            ],
          ),
        ));
  }
}
