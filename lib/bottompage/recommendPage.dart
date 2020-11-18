import 'package:flutter/material.dart';

/*
 * 推荐页面
 */
class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '推荐',
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
