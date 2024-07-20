import 'package:advflutter_ch1/screen/1.4/View/Counter_app.dart';
import 'package:advflutter_ch1/screen/1.4/ViewPage/themeView.dart';
import 'package:advflutter_ch1/screen/1.4/provider/counter_provider.dart';
import 'package:advflutter_ch1/screen/1.4/provider/themeprovider.dart';
import 'package:advflutter_ch1/screen/1.5%20one%20time%20intro%20screen/Provider/oneTimeChangeScreen.dart';
import 'package:advflutter_ch1/screen/1.5%20one%20time%20intro%20screen/viewScreen/introScreen1.dart';
import 'package:advflutter_ch1/screen/1.5%20one%20time%20intro%20screen/viewScreen/introScreen2.dart';
import 'package:advflutter_ch1/screen/1.5%20one%20time%20intro%20screen/viewScreen/introScreen3.dart';
import 'package:advflutter_ch1/screen/1.6%20Contact%20Us%20Page%20With%20Interaction/ProviderContact/ProviderPage.dart';
import 'package:advflutter_ch1/screen/1.6%20Contact%20Us%20Page%20With%20Interaction/viewContact/FirstPage.dart';
import 'package:advflutter_ch1/screen/1.7%20Photo%20Gallery%20With%20Biometric%20Authentication/ViewGallery/FirstScreen.dart';
import 'package:advflutter_ch1/screen/1.7%20Photo%20Gallery%20With%20Biometric%20Authentication/ViewGallery/SecondScreen.dart';
import 'package:advflutter_ch1/screen/1.7%20Photo%20Gallery%20With%20Biometric%20Authentication/provider/localAuth_provider.dart';
import 'package:advflutter_ch1/screen/home/change_theme.dart';
import 'package:advflutter_ch1/screen/lec-%201.5%20data%20solving/provider/provider.dart';
import 'package:advflutter_ch1/screen/lec-%201.5%20data%20solving/view/quoteData.dart';
import 'package:advflutter_ch1/screen/lec-1/Stepper/stepper1.dart';
import 'package:advflutter_ch1/screen/lec-1/Stepper/stepper2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool theme1 = false;
bool isHomed = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  bool Theme = sharedPreferences.getBool('theme') ?? false;

  isHomed = sharedPreferences.getBool('change') ?? false;
  theme1 = isHomed;

  runApp(
    MultiProvider(
        providers: [
          //counterApp provider............
          ChangeNotifierProvider(
            create: (context) => CounterProvider(),
          ),
          //profile darkTheme/lightTheme.........
          ChangeNotifierProvider(
            create: (context) => ChangeProvider(),
          ),
          //quotes data solving..........
          ChangeNotifierProvider(
            create: (context) => QuoteProvider(),
          ),
          //Contact share_plus/url_launcher.........
          ChangeNotifierProvider(
            create: (context) => ContactHomeProvider(),
          ),
          //Fingerprint
          ChangeNotifierProvider(
            create: (context) => AuthProvider(),
          ),
          //OneTimeScreen..............
          ChangeNotifierProvider(
            create: (context) => OneTimeChangeProvider(Theme),
          ),
        ],
        builder: (context, child) =>MyApp()
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(// brightness: Brightness.light,
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
        '/quote': (context) => QuoteScreen(),
        '/home':(context)=>Homepage(),
          '/': (context) => IntroScreen1(),

        '/change': (context) => ChangeProviderTheme(),
        '/stepper1': (context) => StepperScreen(),
        '/stepper': (context) => Stepper2(),
        '/theme': (context) => ChangeTheme(),
        '/auth': (context) => AuthenticationScreen(),
        '/second': (context) => SecondPage(),
        '/count': (context) => CounterApp(),
      },
    );
  }
}