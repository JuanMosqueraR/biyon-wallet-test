import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class InputStyles {
  static InputDecoration get signUpInputDecoration {
    return InputDecoration(
      isDense: true,
      filled: true,
      fillColor: Colors.white,
      hintStyle: TextStyles.signUpHintStyle,
      contentPadding:
          const EdgeInsets.only(top: 14, bottom: 8, left: 12, right: 8),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColor.colorGreyBorderInput),
          borderRadius: BorderRadius.circular(19)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColor.colorGreyBorderInput),
          borderRadius: BorderRadius.circular(19)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColor.colorGreyBorderInput),
          borderRadius: BorderRadius.circular(19)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColor.colorPrimary),
          borderRadius: BorderRadius.circular(19)),
    );
  }

  static InputDecoration get signUpInputPrefixSuffixDecoration {
    return signUpInputDecoration.copyWith(
      prefixIconConstraints:  const BoxConstraints(
          minWidth: 36,
          maxWidth: 41,
          minHeight: 21,
          maxHeight: 21),
      suffixIconConstraints: const BoxConstraints(
          minWidth: 31,
          maxWidth: 41,
          minHeight: 21,
          maxHeight: 21),
      contentPadding:
          const EdgeInsets.only(top: 14, bottom: 8, left: 12, right: 0),
    );
  }
}
