import 'package:flutter/material.dart';
import 'category_route.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unit Converter",
      theme: new ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.black
        ),
        primaryColor: Colors.grey[500],
        textSelectionHandleColor: Colors.white
      ),
      home: CategoryRoute(),
    );
  }

}