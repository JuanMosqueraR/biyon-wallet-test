import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_4.dart';
import 'package:code/ui/screens/create_account_step_7.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/widgets/create_account_step_header.dart';
import 'package:flutter/material.dart';

class CreateAccountStep6Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep6State();
}

class _CreateAccountStep6State extends State<CreateAccountStep6Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  CreateAccountStepHeader(),
                  const SizedBox(height: 23),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Image.asset(
                      "assets/img/ic_sign_up_protect_account.png",
                      width: 59,
                    ),
                  ),
                  const SizedBox(height: 21),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        S.current.sign_up_protect_your_account,
                        style: TextStyles.signUpTitleStyle,
                      )),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 33),
                    child: Text(
                      S.current.sign_up_complete_account_security,
                      style: TextStyles.signUpDescriptionStyle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: Text(
                      S.current.sign_up_complete_account_security_description,
                      style: TextStyles.signUpDescriptionSmallStyle,
                    ),
                  ),
                  const SizedBox(height: 21),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 18, right: 25),
                    height: 74,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(23)),
                        border: Border.all(
                            color: AppColor.colorGreyBorderInput, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.current.sign_up_phone_number_confirmed,
                          style: TextStyles.signUpDescriptionStyle,
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/ic_sign_up_check.png",
                          width: 21,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 18, right: 25),
                    height: 74,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(23)),
                        border: Border.all(
                            color: AppColor.colorGreyBorderInput, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.current.sign_up_nationality,
                          style: TextStyles.signUpDescriptionStyle,
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/ic_sign_up_right_arrow.png",
                          width: 21,
                        )
                      ],
                    ),
                  ),
                ])),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 16),
              child: ElevatedButton(
                style: ButtonStyles.primaryButtonStyle,
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccountStep7Screen()));
                },
                child: Text(S.current.continue_option),
              ),
            )
          ],
        ));
  }
}
