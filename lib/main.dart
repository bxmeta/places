import 'package:flutter/material.dart';
import 'package:places/service/app_settings.dart';
import 'package:places/ui/res/app_themes.dart';
import 'package:places/ui/screen/filter_screen.dart';
import 'package:places/ui/screen/settings_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';
// import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(const App(),);
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppSettings.themeIsLight,
      builder: (_, isLight, __) => MaterialApp(
        title: 'Places',
        theme: isLight ? AppThemes.lightTheme : AppThemes.darkTheme,
        home: const SightListScreen(),
      ),
    );
  }
}