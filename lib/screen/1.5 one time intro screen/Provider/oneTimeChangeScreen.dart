import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class OneTimeProvider extends ChangeNotifier {
   late SharedPreferences sharedPreferences;
  bool isTrue = false;

  Future<void> setMethod(bool isTrue) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('change', isTrue);
    notifyListeners();
  }

  void changMethod() {
    isTrue = !isTrue;
    setMethod(isTrue);
    notifyListeners();
  }

  Future<void> getMethod() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isTrue = sharedPreferences.getBool('change') ?? false;
    notifyListeners();
  }

  oneTimeScreen(bool theme) {
    isTrue = theme;
    notifyListeners();
  }
}