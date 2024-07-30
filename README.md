# advflutter_ch1
## Theme
<img src = "https://github.com/Shalu6634/advflutter_ch1/assets/149373622/d0966e01-af16-41f2-b717-51ea38093ee4" height = 25%  width = 25%>
<img src = "https://github.com/Shalu6634/advflutter_ch1/assets/149373622/ac8fab74-d3b0-4a37-be8d-48cae5034b8b" height = 25%  width = 25%>


## Registration Page using Stepper Widget
## Stepper Widget 

- This is the main widget that manages the steps and their navigation. It takes a list of Step objects and manages the current step.
#### steps Method: 
- Returns a list of Step widgets, each representing a different part of the registration process. Each Step has a title and content.
- onStepTapped: Updates the current step when a step is tapped.
- TextFormField: Used for user input.
- Padding: Adds padding around the Stepper widget for better spacing.

<img src = "https://github.com/user-attachments/assets/7d2c3f81-b69c-4cec-aa2c-844ebb3fca6b" height = 25%  width = 25%>
<img src = "https://github.com/user-attachments/assets/5dd4ba18-49c9-4af8-9073-a042203d8eed" height = 25%  width = 25%>

# State
- Also known as local state or UI state, it is the state that is used temporarily within a single widget.

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State Management
- state management involves managing the state of widgets to ensure the UI reflects the current state accurately. 

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

- Supports a reactive programming model using ChangeNotifier.

- State management refers to the practice of handling the state of an application or system in a way that ensures consistency, predictability, and ease of maintenance. In the context of software development, state management involves tracking and updating the state (data or information) that determines the behavior and appearance of the application. 

## ChangeNotifier

- ChangeNotifier extends the Listenable class, which means it can notify listeners when a change occurs.

- When the state changes, ChangeNotifier provides a method called notifyListeners() that can be called to inform all registered listeners about the change.
- Whenever the state changes, call notifyListeners() to inform all listeners about the update.


## Example
```dart

 import 'package:flutter/material.dart';  
  
class Counter with ChangeNotifier {  
  int _count;  
  
  Counter(this._count);  
  
  getCounter() => _count;  
  setCounter(int count) => _count = count;  
  
  void increment() {  
    _count++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _count--;  
    notifyListeners();  
  }  
}  
```

## ChangeNotifierProvider

- ChangeNotifierProvider is a widget provided by the Provider package in Flutter that allows you to easily provide and manage state using a ChangeNotifier. 

- It provides an instance of a ChangeNotifier to the widget tree.

- Rebuilds the widgets that depend on the ChangeNotifier whenever the state changes.



## Example

```dart
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  
 
```

## Consumer
- Consumer is a widget provided by the provider package that allows you to listen to changes in a provided state and rebuild parts of your widget tree based on those changes.

- Use Consumer when you need to rebuild a part of your UI based on changes in specific state.
- The Consumer<Counter> widget listens to changes in the Counter state provided by ChangeNotifierProvider.


## Example

```dart

  Consumer<Counter>(
 builder: (context, counter, child) {
 return Text(
  '${counter.count}',
 style: Theme.of(context).
  textTheme.headline4,
  );
```
## Provider Tree
<img src = "https://github.com/user-attachments/assets/0d5ec086-75a6-4eef-a65b-04704ac3acc6" height = 35%  width = 40%>


 ### Provider & Change Theme using Provider
- This class extends ChangeNotifier and manages the theme state.
- toggleTheme method switches between light and dark themes and calls notifyListeners to update the UI.

  

```dart

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    _themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}


```


 <img src = "https://github.com/user-attachments/assets/bb41fff8-a4fe-4316-87c0-4d1c5f790d3b" height = 25%  width = 25%>
 <img src = "https://github.com/user-attachments/assets/96e36732-587d-43d0-81b7-7487660a431b" height = 25%  width = 25%>

https://github.com/user-attachments/assets/6de8eeab-a75c-4800-9715-8725c9492ec6
 ## Quotes Data Solving with Provider :-
 
- Quote Model: Represents the structure of a - quote with id, text, and author.

- QuotesProvider: Manages the list of quotes and provides methods for adding, editing, and deleting quotes. Uses notifyListeners to update the UI when changes occur.

- main.dart: Wraps the app with ChangeNotifierProvider to provide the QuotesProvider to the widget tree.

```dart

class Quote {
  String id;
  String text;
  String author;

  Quote({
    required this.id,
    required this.text,
    required this.author,
  });
}


```


<img src = "https://github.com/user-attachments/assets/0bec5594-079b-407f-a80f-82fe88812e86" height = 25%  width = 25%>
<img src = "https://github.com/user-attachments/assets/e952c80e-95f4-431d-9db9-a9000f64a196" height = 25%  width = 25%>
<img src = "https://github.com/user-attachments/assets/c480b531-b517-4fa0-995c-fe30937c162a" height = 25%  width=25%>


https://github.com/user-attachments/assets/9ad14035-0d8d-44d7-b8ac-a683b46c1efc

## Contact Us Page With Interaction

- The provided URL is passed directly to the host platform for handling. The supported URL schemes therefore depend on the platform and installed apps.

<img src = "https://github.com/user-attachments/assets/487146a4-d2a7-4011-9147-9a022ee79a28" height = 25%  width = 25%>

https://github.com/user-attachments/assets/d84e53f2-2f5b-43f6-8c82-e4a6b2c11101

## One Time IntroScreen

# SharedPreferences 

- SharedPreferences in Android is a mechanism for saving key-value pairs persistently. It allows you to store and retrieve primitive data types (boolean, float, int, long, String) in a persistent manner across app sessions.

- SharedPreferences is suitable for storing small amounts of data, such as user preferences, settings, or application state.

- SharedPreferences is a simple and effective way to manage app preferences and small amounts of persistent data in Android applications.

<img src = "https://github.com/user-attachments/assets/b3c87ad2-9fff-4c56-8011-eaebbf7687ba" height=20%  width=20%>
<img src = "https://github.com/user-attachments/assets/d56cdca5-2bb5-40a0-8730-bbbe32cf1dc4" height=20%  width=20%>
<img src = "https://github.com/user-attachments/assets/94ad56a2-e25d-47b7-9f67-68a403cd2c7b" height=20%  width=20%>
<img src = "https://github.com/user-attachments/assets/bb41fff8-a4fe-4316-87c0-4d1c5f790d3b" height = 20%  width = 20%>

https://github.com/user-attachments/assets/47963d5e-9526-436c-b3ad-0fcb5fd66fc7

##  Photo Gallery With Biometric Authentication
- Biometric authentication is becoming increasingly prevalent due to advancements in technology and the growing need for secure and user-friendly authentication methods.
- Integrate biometric authentication SDKs/APIs (e.g., Apple's Face ID, Android's BiometricPrompt).
- Ensure fallback options are available.
- LocalAuthentication is used to check if the device supports biometric authentication and to perform the actual authentication.
- The _checkBiometrics method checks if biometric authentication is available on the device.
- The _authenticate method prompts the user to authenticate using biometrics.

<img src="https://github.com/user-attachments/assets/13d29fd6-3b64-4fa1-b0ed-6b3be689a2f4" height = 25%  width=25%>
<img src="https://github.com/user-attachments/assets/735ce443-43e0-476a-a93f-7aab19109d44" height = 25%  width=25%>
<img src="https://github.com/user-attachments/assets/7c93fdb1-0816-4090-801d-e153fb711ba8" height = 25%  width=25%>

https://github.com/user-attachments/assets/28227534-a18b-47a1-ba1a-fa75d9c0b226



