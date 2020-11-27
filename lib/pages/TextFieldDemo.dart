import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * 输入框TextField使用 
 */
class TextFieldDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('输入框TextField使用', TextFieldDemo());
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _username = new TextEditingController(); //用来初始化给表单赋值

  var _password; //默认没有初始值

  @override
  void initState() {
    super.initState();
    _username.text = '用户名';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        //最简单的textField
        TextField(),
        SizedBox(height: 20),
        //有边框的textField
        TextField(
          decoration: InputDecoration(
              hintText: '有边框的textField', border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        //多行文本框的TextField
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
              hintText: '多行文本框的TextField', border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        //密码框的TextField
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: '密码框的TextField', border: OutlineInputBorder()),
        ),
        SizedBox(height: 20),
        //文本浮在左上角的TextField
        TextField(
          decoration: InputDecoration(
              hintText: '文本浮在左上角的TextField',
              border: OutlineInputBorder(),
              labelText: "用户名",
              labelStyle: TextStyle(color: Colors.red)),
        ),
        SizedBox(height: 20),

        Text('初始化给表单赋值TextField'),
        TextField(
          decoration:
              InputDecoration(hintText: '用户名', border: OutlineInputBorder()),
          controller: this._username,
          onChanged: (value) {
            setState(() {
              this._username.text = value;
            });
          },
        ),
        RaisedButton(
          child: Text('获取用户名'),
          onPressed: () {
            print(this._username.text);
          },
        ),
        SizedBox(height: 20),
        Text('初始化不赋值，获取文本框的内容'),
        TextField(
          obscureText: true,
          decoration:
              InputDecoration(hintText: '密码', border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              this._password = value;
            });
          },
        ),
        RaisedButton(
          child: Text('获取密码'),
          onPressed: () {
            print(this._password);
          },
        ),
      ]),
    );
  }
}
