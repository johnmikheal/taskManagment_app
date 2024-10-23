import 'package:flutter/material.dart';
import 'package:project_6/core/colors_manager.dart';
import 'package:project_6/core/text_styles.dart';

class MyTheme {
  static ThemeData LightTheme = ThemeData(
      useMaterial3: false,
      primaryColor: ColorsManager.blueColore,
      appBarTheme: AppBarTheme(
          backgroundColor: ColorsManager.blueColore,
          centerTitle: true,
          titleTextStyle: AppTextStyles.appBatTextStyle),
      /////////////////////////////////////////
      scaffoldBackgroundColor: ColorsManager.scafoldBgColore,
      /////////////////////////////////////////
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: ColorsManager.blueColore,
        unselectedItemColor: ColorsManager.greyColore,
        elevation: 18,
        selectedIconTheme: IconThemeData(
          size: 32,
        ),
      ),
      /////////////////////////////////////////
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.transparent,
        elevation: 0
      ),
      dividerColor: ColorsManager.blueColore,
      /////////////////////////////////////////
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        //اخلي الحواف بيضه بتاعت الزرار
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(color: Colors.white , width: 4)
        ),
        backgroundColor: ColorsManager.blueColore,
        elevation: 12,
        iconSize: 26,
      ),
      /////////////////////////////////////////
      textTheme: TextTheme(
        titleMedium: AppTextStyles.cardTitleTextStyle,
        labelSmall:  AppTextStyles.settingsItemTextStyle,
      )
  );
      /////////////////////////////////////////

}
