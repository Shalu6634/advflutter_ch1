import 'package:flutter/material.dart';

import '../../1.4/View/themeView.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: height * 1,
              width: width * 1,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    'assets/intro/intro1.jpg',
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: height * 0.4,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(110),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Let`s Cooking',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: height*0.030),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Food is the substance we eat\n every day for energy and strength. \n  There are many different types of food, \nsuch as fruits, vegetables, rice, and pasta.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => ChangeProviderTheme(),
                              ),
                            );
                          },
                          child:
                            Container(
                              height: height*0.050,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                                  ),
                              child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white),)),
                            ),

                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
