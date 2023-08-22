import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_11.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStep10Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep10State();
}

class _CreateAccountStep10State extends State<CreateAccountStep10Screen> {
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
                  Container(
                    width: double.infinity,
                    height: 25,
                    margin: const EdgeInsets.only(right: 31, top: 48, left: 14),
                    child: Stack(children: [
                      Align(
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
                      Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreateAccountStep11Screen()));
                            },
                            child: Text(
                              S.current.skip_option,
                              style: TextStyles.actionBarTextStyle,
                            ),
                          )),
                    ]),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                      padding: const EdgeInsets.only(left: 23,right: 17),
                      child: Text(
                        S.current.sign_up_how_will_you_use,
                        style: TextStyles.signUpTitleStyle,
                      )),
                  const SizedBox(height: 68),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 18, right: 25),
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(23)),
                        border: Border.all(
                            color: AppColor.colorGreyBorderInput, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.current.sign_up_how_will_you_use_opt_1,
                          style: TextStyles.signUpDescriptionStyle,
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/ic_sign_up_check_orange.png",
                          width: 21,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 11),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 18, right: 25),
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(23)),
                        border: Border.all(
                            color: AppColor.colorGreyBorderInput, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.current.sign_up_how_will_you_use_opt_2,
                          style: TextStyles.signUpDescriptionStyle,
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/ic_sign_up_uncheck.png",
                          width: 21,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 11),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 18, right: 25),
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(23)),
                        border: Border.all(
                            color: AppColor.colorGreyBorderInput, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.current.sign_up_how_will_you_use_opt_3,
                          style: TextStyles.signUpDescriptionStyle,
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/ic_sign_up_uncheck.png",
                          width: 21,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 11),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 18, right: 25),
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(23)),
                        border: Border.all(
                            color: AppColor.colorGreyBorderInput, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.current.sign_up_how_will_you_use_opt_4,
                          style: TextStyles.signUpDescriptionStyle,
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/img/ic_sign_up_uncheck.png",
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
                          builder: (context) => CreateAccountStep11Screen()));
                },
                child: Text(S.current.continue_option),
              ),
            )
          ],
        ));
  }
}
