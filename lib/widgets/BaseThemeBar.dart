import 'package:flutter/material.dart';

Widget getBaseThemeBar(String title, Widget body) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    body: body,
  );
}
