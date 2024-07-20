import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OneTimeChangeProvider extends ChangeNotifier
{
  late SharedPreferences sharedPreferences;
   bool isTrue=false;

   Future<void> setMethod(bool isTrue)
   async {
     sharedPreferences = await SharedPreferences.getInstance();
     sharedPreferences.setBool('change', true);
     notifyListeners();
   }
   void changeScreen()
   {
     isTrue =!isTrue;
     setMethod(isTrue);
     notifyListeners();
   }
  Future<void> getMethod() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isTrue = sharedPreferences.getBool('home') ?? false;
    notifyListeners();
  }
  OneTimeChangeProvider(bool Theme)
  {
    isTrue = Theme;
    notifyListeners();
  }
}