import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appbar.dart';
import 'bottomNavigationbar.dart';
import 'provider.dart';

class SecondTestNavigation extends StatefulWidget {
  @override
  _SecondTestNavigationState createState() => _SecondTestNavigationState();
}

class _SecondTestNavigationState extends State<SecondTestNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('second page'),
      bottomNavigationBar: BottomNavigationbarForAll(),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Provider.of<AppbarText>(context, listen: false).incrementNumber();
            },
            child: Text('add to cart'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('pop'),
          ),
        ],
      ),
    );
  }
}
