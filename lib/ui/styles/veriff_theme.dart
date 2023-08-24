import 'package:flutter/material.dart';
import 'package:veriff_flutter/veriff_flutter.dart';

class VeriffTheme {
  static final veriffFonts = Fonts(
    boldFontPath: 'fonts/BasierCircle-Bold.ttf',
    mediumFontPath: 'fonts/BasierCircle-Medium.ttf',
    regularFontPath: 'fonts/BasierCircle-Regular.ttf',
  );
  static final veriffBranding = Branding(
    logo: const AssetImage('assets/img/ic_intro_logo.png'),
    fonts: veriffFonts,
    primary: '#ea512e',
    secondary: '#ea512e',
    cameraOverlay: '#ea512e',
    buttonRadius: 23,
    onSecondary: '#FFFFFF',
  );
}
