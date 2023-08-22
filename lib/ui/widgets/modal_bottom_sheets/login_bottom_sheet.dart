import 'package:code/generated/l10n.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/input_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class LoginBottomSheetScreen extends StatefulWidget {
  @override
  State createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheetScreen> {
  bool _passwordIsObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 84),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    S.current.login_title,
                    style: TextStyles.signUpTitleStyle.copyWith(fontSize: 34),
                  )),
              const SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                  S.current.login_email,
                  style: TextStyles.signUpFieldStyle,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: SizedBox(
                  height: 49,
                  child: TextFormField(
                    autofocus: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputStyles.signUpInputDecoration
                        .copyWith(hintText: S.current.login_email_hint),
                    style: TextStyles.signUpInputStyle,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                  S.current.login_password,
                  style: TextStyles.signUpFieldStyle,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: SizedBox(
                  height: 49,
                  child: TextFormField(
                    obscureText: _passwordIsObscureText,
                    autofocus: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration:
                        InputStyles.signUpInputPrefixSuffixDecoration.copyWith(
                            hintText: S.current.sign_up_password_hint,
                            suffixIcon: Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 21,
                                height: 11,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  constraints: const BoxConstraints(
                                      minWidth: 21, maxWidth: 21),
                                  icon: Image.asset(
                                    "assets/img/ic_password_suffix.png",
                                    width: 25,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordIsObscureText =
                                          !_passwordIsObscureText;
                                    });
                                  },
                                ))),
                    style: TextStyles.signUpInputStyle,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        style: TextStyles.textBlackBellowButtonStyle,
                        text: S.current.login_forgot_password_1),
                    TextSpan(
                        style: TextStyles.textBlackBellowButtonStyle.copyWith(
                          color: AppColor.colorPrimary,
                          decoration: TextDecoration.underline,
                        ),
                        text: S.current.login_forgot_password_2)
                  ]))),
              const SizedBox(height: 22),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Image.asset(
                    "assets/img/create_account_o.png",
                  )),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      constraints: const BoxConstraints(
                          minWidth: 98,
                          maxWidth: 98,
                          minHeight: 57,
                          maxHeight: 57),
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
                          minWidth: 98,
                          maxWidth: 98,
                          minHeight: 57,
                          maxHeight: 57),
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
                          minWidth: 98,
                          maxWidth: 98,
                          minHeight: 57,
                          maxHeight: 57),
                      icon: Image.asset(
                        "assets/img/ic_sign_in_apple.png",
                        width: 98,
                        height: 57,
                      ),
                      color: Colors.white,
                      onPressed: () {}),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: ElevatedButton(
                    style: ButtonStyles.primaryButtonStyle,
                    onPressed: () async {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CreateAccountStep1Screen()));
                    },
                    child: Text(S.current.login_option),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
