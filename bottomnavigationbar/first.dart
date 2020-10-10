import 'package:flutter/material.dart';

import 'appbar.dart';
import 'bottomNavigationbar.dart';
import 'secondPage.dart';

class FirstTimeLoadThis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('home'),
      bottomNavigationBar: BottomNavigationbarForAll(),
      body: Center(
        child: RaisedButton(
            child: Text('second page'),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => SecondTestNavigation(),
                  transitionsBuilder: (c, anim, a2, child) =>
                      FadeTransition(opacity: anim, child: child),
                  transitionDuration: Duration(milliseconds: 0),
                ),
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SecondTestNavigation()),
              // );
            }),
      ),
    );
  }
}
