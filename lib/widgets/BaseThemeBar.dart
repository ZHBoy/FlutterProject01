import 'package:flutter/material.dart';

Widget getBaseThemeBar(String title, Widget body) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    ),
    theme: ThemeData(primarySwatch: Colors.red),
  );
}
