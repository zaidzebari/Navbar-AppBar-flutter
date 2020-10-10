import 'package:flutter/cupertino.dart';

class AppbarText extends ChangeNotifier {
  int number = 0;

  incrementNumber() {
    number++;
    notifyListeners();
  }
}

class BottonNavbar extends ChangeNotifier {
  int selectedIndex = 0;
  BuildContext context;
  onItemTapped(int index, BuildContext context) {
    selectedIndex = index;
    this.context = context;
    notifyListeners();
  }
}
