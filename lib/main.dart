import 'package:flutter/material.dart';
import 'package:flutter_ui/view/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        //brightness: Brightness.dark,
      ),
      home: MyHomePage(title: "Projeto de estudos"),
    );
  }
}