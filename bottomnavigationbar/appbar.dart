import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll/bottomnavigationbar/provider.dart';

Widget appbar(String title) {
  return AppBar(
    title: Text(title),
    actions: [
      LayoutBuilder(builder: (context, constraints) {
        return Text(
          '${Provider.of<AppbarText>(context).number}',
          style: TextStyle(fontSize: 40),
        );
      })
    ],
  );
}
