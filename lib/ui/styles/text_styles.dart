import 'package:code/ui/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get actionBarTextStyle {
    return TextStyle(
        color: const Color(0xff555555).withOpacity(0.54),
        fontWeight: FontWeight.w500,
        fontFamily: "BasierCircle",
        fontStyle: FontStyle.normal,
        fontSize: 16.0);
  }

  static TextStyle get textPrimaryButtonStyle {
    return const TextStyle(
        color: Colors.white,
        fontFamily: "BasierCircle",
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 18);
  }

  static TextStyle get textWhiteBellowButtonStyle {
    return const TextStyle(
        color: Colors.white,
        fontFamily: "BasierCircle",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 14);
  }

  static TextStyle get textBlackBellowButtonStyle {
    return textWhiteBellowButtonStyle.copyWith(color: const Color(0xff555555));
  }

  static TextStyle get signUpTitleStyle {
    return const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontFamily: "BasierCircle",
        fontStyle: FontStyle.normal,
        fontSize: 30.0);
  }

  static TextStyle get signUpDescriptionStyle {
    return TextStyle(
        color: Colors.black.withOpacity(0.80),
        fontFamily: "BasierCircle",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 15);
  }

  static TextStyle get signUpDescriptionSmallStyle {
    return const TextStyle(
        color: AppColor.colorGreySmallText,
        fontFamily: "BasierCircle",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 13);
  }

  static TextStyle get signUpStepStyle {
    return TextStyle(
        color: const Color(0xff555555).withOpacity(0.45),
        fontWeight: FontWeight.w500,
        fontFamily: "BasierCircle",
        fontStyle: FontStyle.normal,
        fontSize: 16.0);
  }

  static TextStyle get signUpFieldStyle {
    return const TextStyle(
        color: Color(0xff555555),
        fontWeight: FontWeight.w500,
        fontFamily: "BasierCircle",
        fontStyle: FontStyle.normal,
        fontSize: 14.0);
  }

  static TextStyle get signUpHintStyle {
    return TextStyle(
        color: const Color(0xff8e8e8e).withOpacity(0.66),
        fontWeight: FontWeight.w400,
        fontFamily: "BasierCircle",
        fontStyle: FontStyle.normal,
        fontSize: 15.0);
  }

  static TextStyle get signUpInputStyle {
    return const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontFamily: "BasierCircle",
        fontStyle: FontStyle.normal,
        fontSize: 15.0);
  }

  static TextStyle get signUpTermsAndConditionsStyle {
    return const TextStyle(
        color: Color(0xff8e8e8e),
        fontFamily: "BasierCircle",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 13);
  }
}
