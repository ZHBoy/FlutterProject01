import 'package:flutter/material.dart';
import '../widgets/MyDialog.dart';
import '../widgets/BaseThemeBar.dart';
import 'package:fluttertoast/fluttertoast.dart';

/*
 * AlertDialog SimpleDialog showModalButtomSheet showToast自定义Dialog
 */
class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var alertDialogs = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("确定要删除吗"),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () => Navigator.pop(context, "cancel")),
              FlatButton(
                  child: Text("确定"),
                  onPressed: () => Navigator.pop(context, "yes")),
            ],
          );
        });
    return alertDialogs;
  }

  _alertSimpleDialog() async {
    var alertDialogs = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("提示"),
            children: <Widget>[
              FlatButton(
                child: Text("Option1"),
                onPressed: () => Navigator.pop(context, "Option1"),
              ),
              FlatButton(
                child: Text("Option2"),
                onPressed: () => Navigator.pop(context, "Option2"),
              ),
              FlatButton(
                child: Text("Option3"),
                onPressed: () => Navigator.pop(context, "Option3"),
              ),
            ],
          );
        });
    return alertDialogs;
  }

  _modalButtomSheet() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("设置"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("主页"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("信息"),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        });
  }

  _showToast() {
    Fluttertoast.showToast(
        msg: "这是一个Toast",
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.blue,
        fontSize: 16,
        toastLength: Toast.LENGTH_SHORT,
        textColor: Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        'dialog弹框示例',
        Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _alertDialog,
              child: Text("AlertDialog"),
            ),
            RaisedButton(
              onPressed: _alertSimpleDialog,
              child: Text("SimpleDialog"),
            ),
            RaisedButton(
              onPressed: _modalButtomSheet,
              child: Text("showModalButtomSheet"),
            ),
            RaisedButton(
              onPressed: _showToast,
              child: Text("showToast"),
            ),
            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => MyDialog("title", "content"),
                );
              },
              child: Text("自定义Dialog"),
            ),
          ],
        )));
  }
}
