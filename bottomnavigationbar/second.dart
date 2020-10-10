import 'package:flutter/material.dart';

import 'appbar.dart';
import 'bottomNavigationbar.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Bussness'),
      bottomNavigationBar: BottomNavigationbarForAll(),
      body: Center(
        child: Text('this is Second page load'),
      ),
    );
  }
}
