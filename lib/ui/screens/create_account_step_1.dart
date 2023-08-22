import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_2.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/input_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/widgets/create_account_step_header.dart';
import 'package:code/ui/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class CreateAccountStep1Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateAccountStep1State();
}

class _CreateAccountStep1State extends State<CreateAccountStep1Screen> {
  bool _acceptTermsAndConditions = false;
  bool _passwordIsObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CreateAccountStepHeader(),
              const SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Image.asset(
                  "assets/img/ic_create_account_update_profile_picture.png",
                  width: 59,
                ),
              ),
              const SizedBox(height: 21),
              Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text(
                    S.current.sign_up_create_your_account_title,
                    style: TextStyles.signUpTitleStyle,
                  )),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                  S.current.sign_up_full_name,
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
                        .copyWith(hintText: S.current.sign_up_full_name_hint),
                    style: TextStyles.signUpInputStyle,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                  S.current.sign_up_email,
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
                    textCapitalization: TextCapitalization.none,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputStyles.signUpInputDecoration
                        .copyWith(hintText: S.current.sign_up_email_hint),
                    style: TextStyles.signUpInputStyle,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                  S.current.sign_up_password,
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
              const SizedBox(height: 17),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: GestureDetector(
                        onTap: () async {},
                        child: Padding(
                            padding: const EdgeInsets.only(left: 31, right: 19),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  style:
                                      TextStyles.signUpTermsAndConditionsStyle,
                                  text: S.current
                                      .sign_up_i_have_read_and_accept_privacy_policy_1),
                              TextSpan(
                                  style: TextStyles
                                      .signUpTermsAndConditionsStyle
                                      .copyWith(color: AppColor.colorPrimary),
                                  text: S.current
                                      .sign_up_i_have_read_and_accept_privacy_policy_2),
                              TextSpan(
                                  style:
                                      TextStyles.signUpTermsAndConditionsStyle,
                                  text: S.current
                                      .sign_up_i_have_read_and_accept_privacy_policy_3),
                              TextSpan(
                                  style: TextStyles
                                      .signUpTermsAndConditionsStyle
                                      .copyWith(color: AppColor.colorPrimary),
                                  text: S.current
                                      .sign_up_i_have_read_and_accept_privacy_policy_4),
                              TextSpan(
                                  style:
                                      TextStyles.signUpTermsAndConditionsStyle,
                                  text: S.current
                                      .sign_up_i_have_read_and_accept_privacy_policy_5)
                            ])))),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(right: 36),
                    child: SizedBox(
                      width: 19,
                      height: 19,
                      child: CustomCheckbox(
                        fillColor: MaterialStateProperty.all<Color>(
                            AppColor.colorPrimary),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) {
                            if (states.contains(MaterialState.selected)) {
                              return const BorderSide(
                                  width: 1, color: AppColor.colorPrimary);
                            } else {
                              return const BorderSide(
                                  width: 1, color: Color(0xffcbcbcb));
                            }
                          },
                        ),
                        value: _acceptTermsAndConditions,
                        onChanged: (bool? value) {
                          setState(() {
                            _acceptTermsAndConditions = value!;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))
            ]),
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
                        builder: (context) => CreateAccountStep2Screen()));
              },
              child: Text(S.current.create_account),
            ),
          )
        ]));
  }
}
