import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {

  static ButtonStyle get primaryButtonStyle {
    return ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        minimumSize: const Size.fromHeight(57),
        primary: Colors.black,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        textStyle: TextStyles.textPrimaryButtonStyle)
        .copyWith(elevation: ButtonStyleButton.allOrNull(0.0));
  }
}