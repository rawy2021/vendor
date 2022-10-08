import 'package:flutter/material.dart';
import 'colors/app_color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayFairDisplay",
      textTheme:const TextTheme(
        headline1:  TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColor.black,
        ),
        bodyText1: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w300,
          color: AppColor.color,
          height: 1.3,
        ),
      ),

);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme:const TextTheme(
    headline1:  TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
    bodyText1: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
      color: AppColor.color,
      height: 1.3,
    ),
  ),
);