import 'package:curd_project/Screen/ProductCreteScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter CURD APP',
        debugShowCheckedModeBanner: false,
        home: ProductCreateScreen());
  }
}
