import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

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
                      'Fresh Drinks , Stay Fresh',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
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
                            Navigator.of(context).pushNamed('/intro3');
                          },
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                              height: height * 0.070,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              height: height * 0.030,
                              width: width * 0.090,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                size: 20,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                          ]),
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
