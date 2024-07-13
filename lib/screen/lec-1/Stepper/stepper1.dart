import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text(
              'Flutter Stepper Demo',
              style: TextStyle(
                  fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: Theme(
            data: ThemeData(

              colorScheme: ColorScheme.light(primary: Colors.blue,onSurface: Colors.blue),
            ),
            child: Stepper(
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
              steps: const [
                Step(
                    title: Text(
                      "Account",
                      style: TextStyle(color: Colors.black),
                    ),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Account Number",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                    )),
                Step(
                  title: Text(
                    "Address",
                    style: TextStyle(color: Colors.black),
                  ),
                  content: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Address",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        ),

                      ),
                      cursorColor: Colors.blue
                  ),
                ),
                Step(
                  title: Text(
                    'Mobile Number',
                    style: TextStyle(color: Colors.black),
                  ),
                  content: TextField(
                    cursorWidth: 2,
                    decoration: InputDecoration(

                      focusColor: Colors.blue,
                      hintText: 'Enter Address',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                    cursorColor: Colors.blue,
                  ),
                )
              ],
            ),
          ));
  }
}

int number = 0;
