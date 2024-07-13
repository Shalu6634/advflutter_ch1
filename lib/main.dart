import 'package:advflutter_ch1/screen/1.4/View/themeView.dart';
import 'package:advflutter_ch1/screen/1.4/provider/themeprovider.dart';
import 'package:advflutter_ch1/screen/1.5/view/introScreen1.dart';
import 'package:advflutter_ch1/screen/home/change_theme.dart';
import 'package:advflutter_ch1/screen/lec-1/Stepper/stepper1.dart';
import 'package:advflutter_ch1/screen/lec-1/Stepper/stepper2.dart';
import 'package:advflutter_ch1/utils/globalVar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChangeProvider(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          // brightness: Brightness.light,
          colorScheme: ColorScheme.light(
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: Provider.of<ChangeProvider>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => IntroScreen1(),
          '/change': (context) => ChangeProviderTheme(),
          '/stepper1': (context) => StepperScreen(),
          '/stepper': (context) => Stepper2(),
          '/theme': (context) => ChangeTheme(),
        },
      ),
    ),
  );
}
