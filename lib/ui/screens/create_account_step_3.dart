import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_4.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStep3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 96),
              Image.asset(
                "assets/img/ic_sign_up_welcome.png",
                width: 262,
              ),
              const SizedBox(height: 48),
              Text(S.current.sign_up_welcome,
                  style: TextStyles.signUpTitleStyle),
              Text("user_name",
                  style: TextStyles.signUpTitleStyle
                      .copyWith(color: AppColor.colorPrimary)),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  S.current.sign_up_welcome_description,
                  style: TextStyles.signUpDescriptionStyle,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 16),
            child: ElevatedButton(
              style: ButtonStyles.primaryButtonStyle,
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountStep4Screen()));
              },
              child: Text(S.current.continue_option),
            ),
          )
        ]));
  }
}
