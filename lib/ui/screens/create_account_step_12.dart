import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_10.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/input_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStep12Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep12State();
}

class _CreateAccountStep12State extends State<CreateAccountStep12Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
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
                                    builder: (context) =>
                                        CreateAccountStep10Screen()));
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
                    padding: const EdgeInsets.only(left: 23),
                    child: Text(
                      S.current.sign_up_add_address,
                      style: TextStyles.signUpTitleStyle,
                    )),
                const SizedBox(height: 11),
                Padding(
                    padding: const EdgeInsets.only(left: 23, right: 23),
                    child: Text(
                      S.current.sign_up_add_address_description,
                      style: TextStyles.signUpDescriptionStyle,
                    )),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Text(
                    S.current.sign_up_address,
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
                          .copyWith(hintText: S.current.sign_up_address_hint),
                      style: TextStyles.signUpInputStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Text(
                    S.current.sign_up_address_introduce_address,
                    style: TextStyles.signUpFieldStyle
                        .copyWith(color: AppColor.colorGreySmallText),
                  ),
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Text(
                    S.current.sign_up_home_number,
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
                      decoration: InputStyles.signUpInputDecoration.copyWith(
                          hintText: S.current.sign_up_home_number_hint),
                      style: TextStyles.signUpInputStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Text(
                    S.current.sign_up_street_number,
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
                      decoration: InputStyles.signUpInputDecoration.copyWith(
                          hintText: S.current.sign_up_street_number_hint),
                      style: TextStyles.signUpInputStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Text(
                    S.current.sign_up_additional_information,
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
                      decoration: InputStyles.signUpInputDecoration.copyWith(
                          hintText:
                              S.current.sign_up_additional_information_hint),
                      style: TextStyles.signUpInputStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Text(
                    S.current.sign_up_city,
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
                          .copyWith(hintText: S.current.sign_up_city_hint),
                      style: TextStyles.signUpInputStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Text(
                    S.current.sign_up_zip_code,
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
                          .copyWith(hintText: S.current.sign_up_zip_code_hint),
                      style: TextStyles.signUpInputStyle,
                    ),
                  ),
                ),
                    const SizedBox(height: 120),
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
                        builder: (context) => CreateAccountStep10Screen()));
              },
              child: Text(S.current.continue_option),
            ),
          )
        ]));
  }
}
