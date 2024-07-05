
import 'package:flutter/material.dart';
import '../../utils/globalVar.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      darkTheme: ThemeData.light(),
      themeMode: isDark ? ThemeMode.light : ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Yo Man!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: height*0.049),
              ),
              Text(
                maxLines: 2,textAlign:TextAlign.center,
                'Its a simple example of\n dark theme',style: TextStyle( fontSize: height*0.027,color: Color(0xff979699))
              ),
              SizedBox(height: height*0.110,),
              GestureDetector(
                onTap: (){
                 setState(() {
                     isDark=false;
                 });
                },
                child: Container(
                  height: height*0.090,
                  width: width*0.78,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffffcc00),),
                  child: Center(child: Text('Light Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
                ),
              ),
              SizedBox(height: height*0.040,),
              GestureDetector(
                onTap: (){
                  setState(() {
                      isDark=true;
                  });
                },
                child: Container(
                  height: height*0.090,
                  width: width*0.78,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfffd3b31)),
                  child: Center(child: Text('Dark Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


