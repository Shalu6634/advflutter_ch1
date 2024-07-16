import 'package:advflutter_ch1/screen/1.4/View/themeView.dart';
import 'package:advflutter_ch1/screen/1.4/provider/themeprovider.dart';
import 'package:advflutter_ch1/screen/1.6%20Contact%20Us%20Page%20With%20Interaction/ProviderContact/ProviderPage.dart';
import 'package:advflutter_ch1/screen/1.6%20Contact%20Us%20Page%20With%20Interaction/viewContact/FirstPage.dart';
import 'package:advflutter_ch1/screen/home/change_theme.dart';
import 'package:advflutter_ch1/screen/lec-%201.5%20data%20solving/view/quoteData.dart';
import 'package:advflutter_ch1/screen/lec-1/Stepper/stepper1.dart';
import 'package:advflutter_ch1/screen/lec-1/Stepper/stepper2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactHomeProvider(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(// brightness: Brightness.light,
          colorScheme: ColorScheme.light(
          ),
        ),
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // ),
        // themeMode: Provider.of<ChangeProvider>(context).isDark
        //     ? ThemeMode.dark
        //     : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routes: {
          '/quote': (context) => QuoteScreen(),
          '/':(context)=>Homepage(),
//           '/intro': (context) => IntroScreen1(),
//           '/intro2': (context) => IntroScreen2(),
//           '/intro3': (context) => IntroScreen3(),
          '/change': (context) => ChangeProviderTheme(),
          '/stepper1': (context) => StepperScreen(),
          '/stepper': (context) => Stepper2(),
          '/theme': (context) => ChangeTheme(),
        },
      ),
    ),
  );
}
