
import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier
{
  var add = 0;
  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  void addition() {
    add++;
    notifyListeners();
  }

}
