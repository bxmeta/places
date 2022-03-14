import 'package:flutter/material.dart';
import 'package:places/ui/res/app_colors.dart';

const _textRegular = TextStyle(fontWeight: FontWeight.normal); //400
const _textMiddle = TextStyle(fontWeight: FontWeight.w500);
const _textBold = TextStyle(fontWeight: FontWeight.bold); //700

final _textRegular12 = _textRegular.copyWith(fontSize: 12, height: 16 / 12);
final _textMiddle12 = _textMiddle.copyWith(fontSize: 12, height: 16 / 12);
final _textRegular14 = _textRegular.copyWith(fontSize: 14, height: 18 / 14);
final _textMiddle14 = _textMiddle.copyWith(fontSize: 14, height: 18 / 14);
final _textBold14 = _textBold.copyWith(fontSize: 14, height: 18 / 14);
final _textRegular16 = _textRegular.copyWith(fontSize: 16, height: 20 / 16);
final _textMiddle16 = _textMiddle.copyWith(fontSize: 16, height: 20 / 16);
final _textMiddle18 = _textMiddle.copyWith(fontSize: 18, height: 22.5 / 16);
final _textBold24 = _textBold.copyWith(fontSize: 24, height: 1.2);
final _textBold32 = _textBold.copyWith(fontSize: 32, height: 36 / 32);

class AppThemes {
  static final ThemeData lightTheme = _buildLightTheme();
  static final ThemeData darkTheme = _buildThemeDark();

  AppThemes._();

  static ThemeData _buildLightTheme() {
    final _base = ThemeData.light();

    return _base.copyWith(
      brightness: Brightness.light,
      primaryColor: AppColors.lmBackground,
      primaryColorDark: AppColors.lmNavIconColor,
      // backgroundColor: AppColors.lmBackgroundMain,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: _textBold32.copyWith(color: AppColors.lmTitle),
        backgroundColor: AppColors.lmBackground,
        elevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.lmTabActive,
        labelStyle: _textBold14,
        unselectedLabelColor: AppColors.lmTabUnactive,
        indicator: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          // Creates border
          color: AppColors.lmTabIndicator,
        ),
      ),
      scaffoldBackgroundColor: AppColors.lmBackground,
      bottomAppBarColor: AppColors.lmSecondBackground,
      canvasColor: AppColors.lmSecondBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.lmSecondBackground,
        // selectedItemColor: AppColors.lmBackground,
        // unselectedItemColor: AppColors.lmTabIndicator,
      ),
      // canvasColor: AppColors.lmTabIndicator,
      textTheme: TextTheme(
        subtitle1: _textMiddle16.copyWith(color: AppColors.lmTitle),
        subtitle2: _textBold14.copyWith(color: AppColors.lmCategory),
        headline1: _textBold14.copyWith(color: AppColors.lmTitle),
        headline2: _textRegular16.copyWith(color: AppColors.lmTitle),
        headline3: _textRegular14.copyWith(color: AppColors.lmWantVisitTime),
        headline4: _textBold24.copyWith(color: AppColors.lmTitle),
        headline5: _textRegular14.copyWith(color: AppColors.lmDescription),
        headline6: _textBold24.copyWith(color: AppColors.lmTitle),
        bodyText1: _textMiddle14.copyWith(color: AppColors.lmDescription),
        bodyText2: _textMiddle14.copyWith(color: AppColors.lmDescription),
        button: _textBold14.copyWith(color: AppColors.lmBackground),
      ),
      shadowColor: AppColors.lmShadow,
      elevatedButtonTheme: _baseElevatedButtonTheme,
      sliderTheme: const SliderThemeData(
        trackHeight: 2,
        thumbColor: AppColors.lmBackground,
        activeTrackColor: AppColors.lmWantVisitTime,
      ),
    );
  }

  static ThemeData _buildThemeDark() {
    final _base = ThemeData.light();

    return _base.copyWith(
      brightness: Brightness.dark,
    );
  }
}

final _baseElevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    // minimumSize: MaterialStateProperty.all(Size.zero),
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.all(0),
    ),
    shape: MaterialStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
  ),
);
