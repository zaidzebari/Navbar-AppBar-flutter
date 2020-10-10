import 'package:flutter/material.dart';

import 'appbar.dart';
import 'bottomNavigationbar.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('School'),
      bottomNavigationBar: BottomNavigationbarForAll(),
      body: Center(
        child: Text('this is Third page load'),
      ),
    );
  }
}
