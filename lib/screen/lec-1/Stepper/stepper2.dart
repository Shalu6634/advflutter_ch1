import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../utils/globalVar.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({super.key});

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Flutter Stepper Sample',
            style: TextStyle(
                fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Theme(
          data: ThemeData(colorScheme: ColorScheme.light(primary: Colors.blue,onSurface: Colors.blue),),
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: number,
            onStepCancel: () {
              setState(() {
                if (number > 0) {
                  setState(() {
                    number = number - 1;
                  });
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (number == number && number != 2) {
                  number = number + 1;
                } else {
                  Navigator.of(context).pushNamed('/stepper');
                }
              });
            },
            onStepTapped: (int index) {
              setState(() {
                number = index;
              });
            },
            steps: [
              Step(
                title: Text('Personal',style: TextStyle(color: Colors.black),),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                          hintText: 'Address',
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.grey, width: 2)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.grey,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Step(
                title: Text('Address',style: TextStyle(color: Colors.black)),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                          hintText: 'Address',
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.grey,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Step(
                title: Text('Mobile',style: TextStyle(color: Colors.black)),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                          hintText: 'Address',
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.grey, width: 2)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.grey,
                            )),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
