import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * 单选框使用 Radio RadioListTile Switch
 */
class RadioDemoPage extends StatefulWidget {
  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  int sex = 1;
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar(
        'Radio RadioListTile Swith',
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text('男：'),
                  Radio(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: (v) {
                        setState(() {
                          this.sex = v;
                        });
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  Text('男：'),
                  Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: (v) {
                        setState(() {
                          this.sex = v;
                        });
                      }),
                ],
              ),
              Row(
                children: [Text(this.sex == 1 ? "选中的男" : "选中的女")],
              ),
              SizedBox(),
              RadioListTile(
                  value: 1,
                  groupValue: this.sex,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Icon(Icons.home),
                  selected: this.sex == 1,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  }),
              RadioListTile(
                  value: 2,
                  groupValue: this.sex,
                  title: Text('标题'),
                  subtitle: Text('二级标题'),
                  secondary: Icon(Icons.home),
                  selected: this.sex == 2,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  }),
              SizedBox(
                height: 40,
              ),
              Switch(
                  value: this.flag,
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  })
            ],
          ),
        ));
  }
}
