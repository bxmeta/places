import 'package:flutter/material.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/app_styles.dart';

final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lmNavIconColor,
    backgroundColor: AppColors.lmBackgroundMain,
    bottomAppBarColor: AppColors.lmBackgroundSecond,
    appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: appBarText.copyWith(color: AppColors.lmTitle),
        backgroundColor: AppColors.lmBackgroundMain,
    ),
    tabBarTheme:  TabBarTheme(
        labelColor: AppColors.lmTabActive,
        labelStyle: tabLabel,
        unselectedLabelColor: AppColors.lmTabUnactive,
        indicator: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          // Creates border
          color: AppColors.lmTabIndicator,
        ),
    ),
    scaffoldBackgroundColor: AppColors.lmBackgroundMain,
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //     backgroundColor: Colors.black,//AppColors.lmBackgroundBottom,
    // ),
    textTheme: TextTheme (
        headline5: cardTitle.copyWith(color: AppColors.lmTitle),
        headline4: cardDescription.copyWith(color: AppColors.lmDescription),
        headline3: cardCategory.copyWith(color: AppColors.lmCategory),
        subtitle1: appBarTextVisited.copyWith(color: AppColors.lmTitle),
        subtitle2: cardTime.copyWith(color: AppColors.lmWantVisitTime),
        bodyText1: cardInfo.copyWith(color: AppColors.lmInfo),
        bodyText2: cardInfo.copyWith(color: AppColors.lmInfo),
    ),
    shadowColor: AppColors.lmShadow,
);

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.dmNavIconColor,
    backgroundColor: AppColors.dmBackgroundMain,
    bottomAppBarColor: AppColors.dmBackgroundSecond,
    appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: appBarText.copyWith(color: AppColors.dmTitle),
        backgroundColor: AppColors.dmBackgroundMain,
    ),
    tabBarTheme:  TabBarTheme(
        labelColor: AppColors.dmTabActive,
        labelStyle: tabLabel,
        unselectedLabelColor: AppColors.dmTabUnactive,
        indicator: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            // Creates border
            color: AppColors.dmTabIndicator,
        ),
    ),
    scaffoldBackgroundColor: AppColors.dmBackgroundMain,
    canvasColor: AppColors.dmBackgroundSecond,
    textTheme: TextTheme (
        headline5: cardTitle.copyWith(color: AppColors.dmTitle),
        headline4: cardDescription.copyWith(color: AppColors.dmDescription),
        headline3: cardCategory.copyWith(color: AppColors.dmCategory),
        subtitle1: appBarTextVisited.copyWith(color: AppColors.dmTitle),
        subtitle2: cardTime.copyWith(color: AppColors.dmWantVisitTime),
        bodyText1: cardInfo.copyWith(color: AppColors.dmInfo),
        bodyText2: cardInfo.copyWith(color: AppColors.dmInfo),
    ),
    shadowColor: AppColors.dmShadow,
);
