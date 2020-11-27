import 'package:flutter/material.dart';

/*
 * 我的页面
 */
class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '我的',
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
