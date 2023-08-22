import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_3.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStep2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 25,
                    margin: const EdgeInsets.only(right: 8, top: 48, left: 14),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            icon: Image.asset(
                              "assets/img/ic_back_grey.png",
                              width: 25,
                            ),
                            color: Colors.white,
                            onPressed: () => Navigator.pop(context))),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/img/ic_sign_up_verify_email.png",
                    width: 262,
                  ),
                  const SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          style: TextStyles.signUpDescriptionStyle,
                          text:
                              S.current.sign_up_verify_your_email_description_1,
                        ),
                        TextSpan(
                          style: TextStyles.signUpDescriptionStyle
                              .copyWith(fontWeight: FontWeight.w600),
                          text: "user_email@adrees.com\n",
                        ),
                        TextSpan(
                          style: TextStyles.signUpDescriptionStyle,
                          text:
                              S.current.sign_up_verify_your_email_description_2,
                        )
                      ]),
                    ),
                  )
                ]),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 16),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ElevatedButton(
                  style: ButtonStyles.primaryButtonStyle,
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccountStep3Screen()));
                  },
                  child: Text(S.current.sign_up_go_to_email),
                ),
                const SizedBox(height: 13),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: TextStyles.textBlackBellowButtonStyle,
                      text: S.current.sign_up_send_email_again_1),
                  TextSpan(
                      style: TextStyles.textBlackBellowButtonStyle.copyWith(
                        color:  AppColor.colorPrimary,
                        decoration: TextDecoration.underline,
                      ),
                      text: S.current.sign_up_send_email_again_2)
                ]))
              ]))
        ]));
  }
}
