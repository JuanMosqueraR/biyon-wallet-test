import 'package:code/env/env.dart';
import 'package:code/ui/screens/intro_screen.dart';
import 'package:code/util/behavior/CustomScrollBehavior.dart';
import 'package:code/util/cons.dart';
import 'package:code/util/localization_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:code/ui/styles/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Constants.appName,
        debugShowCheckedModeBanner: false,
        theme: context.lightThemeData(),
        localizationsDelegates: LocalizationConfig.localizationsDelegates,
        supportedLocales: LocalizationConfig.supportedLocales,
        builder: (context, child) {
          return ScrollConfiguration(
              behavior: CustomScrollBehavior(), child: child!);
        },
        home: IntroScreen());
  }
}
