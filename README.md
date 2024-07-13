# advflutter_ch1
## Theme
<img src = "https://github.com/Shalu6634/advflutter_ch1/assets/149373622/d0966e01-af16-41f2-b717-51ea38093ee4" height = 25%  width = 25%>
<img src = "https://github.com/Shalu6634/advflutter_ch1/assets/149373622/ac8fab74-d3b0-4a37-be8d-48cae5034b8b" height = 25%  width = 25%>


## Registration Page using Stepper Widget
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



