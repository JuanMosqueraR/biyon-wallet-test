import 'package:code/ui/styles/color.dart';
import 'package:flutter/material.dart';

extension WalletTheme on BuildContext {

  ThemeData lightThemeData() {
    return ThemeData().copyWith(
        backgroundColor: Colors.white,
        primaryColor: AppColor.colorPrimary,
        // primarySwatch: Colors.deepOrange,
        // fontFamily: "BasierCircle",
      textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'BasierCircle',
      ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),
          // toolbarTextStyle: TextStyle(fontSize: 47, color: colorGreyIcon),
          centerTitle: true,
          // actionsIconTheme: IconThemeData(color: colorGreyIcon)
        ),
        scaffoldBackgroundColor: Colors.white
    );
  }
}