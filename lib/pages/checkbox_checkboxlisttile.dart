import 'package:flutter/material.dart';
import '../widgets/BaseThemeBar.dart';

/*
 * CheckBox 和 CheckboxListTile
 */
class CheckBoxAndCheckboxListTileDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBaseThemeBar('CheckBox 和 CheckboxListTile', HomeContent());
  }
}

//内容区域
class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  var flag = true; //是否选中
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('演示CheckBox'),
        Checkbox(
          value: this.flag,
          onChanged: (valse) {
            setState(() {
              this.flag = valse;
            });
          },
          activeColor: Colors.black, //选中颜色
        ),
        Text(this.flag ? '选中' : '为选中'),
        Divider(),
        SizedBox(height: 20),
        Text('演示CheckBoxListTile'),
        Divider(),
        CheckboxListTile(
          value: this.flag,
          onChanged: (value) {
            setState(() {
              this.flag = value;
            });
          },
          title: Text('标题'),
          subtitle: Text('二级标题'),
          secondary: Icon(Icons.handyman),
        ),
        Divider()
      ],
    );
  }
}
