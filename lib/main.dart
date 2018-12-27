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
      home: CategoryRoute(),
    );
  }

}