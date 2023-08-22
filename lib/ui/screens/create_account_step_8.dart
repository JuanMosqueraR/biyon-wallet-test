import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_9.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/widgets/create_account_step_header.dart';
import 'package:flutter/material.dart';

class CreateAccountStep8Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep8State();
}

class _CreateAccountStep8State extends State<CreateAccountStep8Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "assets/img/ic_sign_up_verify_identity.png",
                    width: 59,
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text(
                      S.current.sign_up_verify_your_identity,
                      style: TextStyles.signUpTitleStyle,
                    )),
                const SizedBox(height: 23),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Text(
                      S.current.sign_up_verify_your_identity_description,
                      style: TextStyles.signUpDescriptionStyle,
                    )),
                const SizedBox(height: 32),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.only(left: 18, right: 25),
                  height: 74,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(23)),
                      border: Border.all(
                          color: AppColor.colorGreyBorderInput, width: 1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        S.current.sign_up_verify_your_identity_opt_1,
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
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.only(left: 18, right: 25),
                  height: 74,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(23)),
                      border: Border.all(
                          color: AppColor.colorGreyBorderInput, width: 1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        S.current.sign_up_verify_your_identity_opt_2,
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
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 16),
            child: ElevatedButton(
              style: ButtonStyles.primaryButtonStyle,
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountStep9Screen()));
              },
              child: Text(S.current.begin_option),
            ),
          )
        ],
      ),
    );
  }
}
