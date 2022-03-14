import 'package:flutter/material.dart';
import 'package:places/ui/res/app_themes.dart';
import 'package:places/ui/screen/filter_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
// import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(const App(),);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const isDark = false;

    return  MaterialApp(
      title: 'Demo',
      theme:  AppThemes.lightTheme,
      home: const FilterScreen(),
    );
  }
}
