import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'first.dart';
import 'provider.dart';
import 'second.dart';
import 'third.dart';

class BottomNavigationbarForAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home ${Provider.of<AppbarText>(context).number}',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: Provider.of<BottonNavbar>(context).selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (v) {
          //this is to set color
          Provider.of<BottonNavbar>(context, listen: false)
              .onItemTapped(v, context);
          if (v == 0) {
            Navigator.pushAndRemoveUntil(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => FirstTimeLoadThis(),
                transitionsBuilder: (c, anim, a2, child) =>
                    FadeTransition(opacity: anim, child: child),
                transitionDuration: Duration(milliseconds: 0),
              ),
              (Route<dynamic> route) => false,
            );

            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => FirstTimeLoadThis()),
            //   (Route<dynamic> route) => false,
            // );
          } else if (v == 1) {
            Navigator.pushAndRemoveUntil(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => Second(),
                transitionsBuilder: (c, anim, a2, child) =>
                    FadeTransition(opacity: anim, child: child),
                transitionDuration: Duration(milliseconds: 0),
              ),
              (Route<dynamic> route) => false,
            );
            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => Second()),
            //   (Route<dynamic> route) => false,
            // );
          } else {
            Navigator.pushAndRemoveUntil(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => Third(),
                transitionsBuilder: (c, anim, a2, child) =>
                    FadeTransition(opacity: anim, child: child),
                transitionDuration: Duration(milliseconds: 0),
              ),
              (Route<dynamic> route) => false,
            );

            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => Third()),
            //   (Route<dynamic> route) => false,
            // );
          }
        });
  }
}
