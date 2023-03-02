import 'package:flutter/material.dart';
import 'package:flutter_ui/controller/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mude o tema"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
              icon: Icon(Icons.account_circle)),
          IconButton(
              onPressed: () => _themeChanger.setTheme(ThemeData.light()),
              icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                  selectedIcon: Icon(Icons.home_filled)),
              NavigationRailDestination(
                  icon: Icon(Icons.star),
                  label: Text("Favorites"),
                  selectedIcon: Icon(Icons.star)),
              NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                  selectedIcon: Icon(Icons.settings)),
              NavigationRailDestination(
                  icon: Icon(Icons.account_box),
                  label: Text("Account"),
                  selectedIcon: Icon(Icons.account_box_rounded))
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onIconTapped,
            labelType: NavigationRailLabelType.selected,
          ),
          Container(
              child: Column(
            children: [
              TextButton(
                  onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
                  child: Text("Theme Dark")),
              TextButton(
                  onPressed: () => _themeChanger.setTheme(ThemeData.light()),
                  child: Text("Theme Light")),
            ],
          )),
        ],
      ),
    );
  }
}
