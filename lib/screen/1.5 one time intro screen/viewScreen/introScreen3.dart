import 'package:flutter/material.dart';

import '../../1.4/ViewPage/themeView.dart';
import 'introScreen2.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: height * 1,
              width: width * 1,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 30),
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.4,
                    width: width,
                    decoration: BoxDecoration(
                      // color: Colors.redAccent,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/intro/intro3.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 122.4,
                ),
                Container(
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
                        'Lets coking',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ChangeProviderTheme()),
                              );
                            },
                            child: Container(
                              height: height * 0.050,
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
