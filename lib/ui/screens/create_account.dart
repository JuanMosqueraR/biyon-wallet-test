import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_1.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/widgets/create_account_step_header.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          CreateAccountStepHeader(),
          const SizedBox(height: 34),
          Text(
            S.current.sign_up_create_your_account,
            style: TextStyles.signUpTitleStyle
          ),
          const SizedBox(height: 22),
          Text(S.current.sign_up_using,
              style: TextStyle(
                  color: const Color(0xff555555).withOpacity(0.67),
                  fontWeight: FontWeight.w500,
                  fontFamily: "BasierCircle",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0)),
          const SizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  constraints: const BoxConstraints(
                      minWidth: 98, maxWidth: 98, minHeight: 57, maxHeight: 57),
                  icon: Image.asset(
                    "assets/img/ic_sign_in_google.png",
                    width: 98,
                    height: 57,
                  ),
                  color: Colors.white,
                  onPressed: () {}),
              const SizedBox(
                width: 11,
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  constraints: const BoxConstraints(
                      minWidth: 98, maxWidth: 98, minHeight: 57, maxHeight: 57),
                  icon: Image.asset(
                    "assets/img/ic_sign_in_facebook.png",
                    width: 98,
                    height: 57,
                  ),
                  color: Colors.white,
                  onPressed: () {}),
              const SizedBox(
                width: 11,
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  constraints: const BoxConstraints(
                      minWidth: 98, maxWidth: 98, minHeight: 57, maxHeight: 57),
                  icon: Image.asset(
                    "assets/img/ic_sign_in_apple.png",
                    width: 98,
                    height: 57,
                  ),
                  color: Colors.white,
                  onPressed: () {}),
            ],
          ),
          const SizedBox(height: 22),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image.asset(
                "assets/img/create_account_o.png",
              )),
          const SizedBox(height: 29),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ButtonStyles.primaryButtonStyle,
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccountStep1Screen()));
                },
                child: Text(S.current.sign_up_continue_with_email),
              )),
        ],
      ),
    );
  }
}
