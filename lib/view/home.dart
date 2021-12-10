import 'package:flutter/material.dart';
import 'package:flutter_ui/model/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projeto de Estudos"),
        actions: [
          IconButton(
          onPressed: ()=> _themeChanger.setTheme(ThemeData.dark()),
              icon: Icon(Icons.account_circle)),
          IconButton(
              onPressed: ()=> _themeChanger.setTheme(ThemeData.light()),
              icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            FlatButton(onPressed: ()=> _themeChanger.setTheme(ThemeData.dark()), child: Text("Theme Dark")),
            FlatButton(onPressed: ()=> _themeChanger.setTheme(ThemeData.light()), child: Text("Theme Light")),
          ],
        )
      ),
    );
  }
}