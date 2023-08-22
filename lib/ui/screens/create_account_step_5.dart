import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_6.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreateAccountStep5Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep5State();
}

class _CreateAccountStep5State extends State<CreateAccountStep5Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          SingleChildScrollView(
              child: Column(children: [
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
            const SizedBox(height: 23),
            Image.asset(
              "assets/img/ic_sign_up_verify_phone.png",
              width: 262,
            ),
            const SizedBox(height: 28),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  S.current.sign_up_verify_phone_number,
                  style: TextStyles.signUpTitleStyle,
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 28),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  S.current.sign_up_verify_phone_number_description,
                  style:
                      TextStyles.signUpDescriptionStyle.copyWith(fontSize: 13),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 28),
            SizedBox(
                width: 323,
                child: PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  cursorColor: AppColor.colorGreyBorderInput,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderWidth: 1,
                    activeBorderWidth: 1,
                    selectedBorderWidth: 1,
                    inactiveBorderWidth: 1,
                    disabledBorderWidth: 1,
                    errorBorderWidth: 1,
                    borderRadius: BorderRadius.circular(19),
                    fieldHeight: 58,
                    fieldWidth: 48,
                    activeColor: AppColor.colorGreyBorderInput,
                    activeFillColor: Colors.white,
                    selectedColor: AppColor.colorGreyBorderInput,
                    inactiveColor: AppColor.colorGreyBorderInput,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    errorBorderColor: AppColor.colorGreyBorderInput,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  // controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      // currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                )),
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom))
          ])),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(mainAxisSize: MainAxisSize.min, children: [ ElevatedButton(
              style: ButtonStyles.primaryButtonStyle,
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountStep6Screen()));
              },
              child: Text(S.current.send_option),
            ),
              const SizedBox(height: 13),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        style: TextStyles.textBlackBellowButtonStyle,
                        text: S.current.sign_up_verify_phone_number_try_again_1),
                    TextSpan(
                        style: TextStyles.textBlackBellowButtonStyle.copyWith(
                          color:  AppColor.colorPrimary,
                          decoration: TextDecoration.underline,
                        ),
                        text: S.current.sign_up_verify_phone_number_try_again_2)
                  ]))
            ])
          ),
        ]));
  }
}
