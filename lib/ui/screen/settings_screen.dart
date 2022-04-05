import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/service/app_settings.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/res/app_strings.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

import '../../main.dart';

class  SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.subtitle1,
        title: const Text(AppStrings.config),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          ListTile(
            title: const Text(AppStrings.darkTheme),
            trailing: CupertinoSwitch(
              value: isDark,
              onChanged: (value) {
                AppSettings.themeIsLight.value = !value;
              },
            ),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Theme.of(context).shadowColor,
              margin: const EdgeInsets.only(left: 16, right: 16,),
            ),
          ),
          ListTile(
            title: const Text(AppStrings.viewTutorial),
            trailing: Container(
              margin: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                AppIcons.info,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              offset: const Offset(0, -0.5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation:0,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.list,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.map,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.heartFull,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.settings,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
