import 'package:flutter/material.dart';
import 'package:flutter_ui/model/theme.dart';

import 'package:flutter_ui/view/home.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: HomePage(),
      theme: theme.getTheme(),

      //ThemeData(
        //primarySwatch: Colors.red,
        //brightness: Brightness.dark,
      //),
    );
  }
}