import 'package:flutter/material.dart';

import 'introScreen2.dart';


class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(children: [
            Center(
              child: Stack(children: [
                Container(
                  height: height * 1,
                  width: width * 1,
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
                Center(
                    child: Column(
                  children: [
                    Container(
                      height: height * 0.6,
                      width: width * 1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/intro/intro1.png',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.4,
                      width: width * 1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(110))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Hmmm , Tasty food',
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
                              Text(
                                'Skip Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => IntroScreen2()));
                                },
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          size: 20,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ]),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
              ]),
            ),
          ]),
        ],
      ),
    );
  }
}
