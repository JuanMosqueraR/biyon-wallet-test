import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_8.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/input_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStep7Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep7State();
}

class _CreateAccountStep7State extends State<CreateAccountStep7Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Column(
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
                                  builder: (context) => CreateAccountStep8Screen()));
                        },
                        child: Text(
                          S.current.skip_option,
                          style: TextStyles.actionBarTextStyle,
                        ),
                      )),
                ]),
              ),
              const SizedBox(height: 39),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    S.current.sign_up_nationality_title,
                    style: TextStyles.signUpTitleStyle,
                  )),
              const SizedBox(height: 18),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Text(
                    S.current.sign_up_nationality_description,
                    style: TextStyles.signUpDescriptionStyle,
                  )),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                  S.current.sign_up_nationality,
                  style: TextStyles.signUpFieldStyle,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(left: 21, right: 20),
                child: SizedBox(
                  height: 49,
                  child: TextFormField(
                    autofocus: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    textCapitalization: TextCapitalization.none,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputStyles.signUpInputPrefixSuffixDecoration.copyWith(
                        hintText: S.current.sign_up_nationality_hint,
                        prefixIcon: Container(
                            margin:
                            const EdgeInsets.only(left: 6),
                            width: 21,
                            height: 11,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              constraints: const BoxConstraints(
                                  minWidth: 21,
                                  maxWidth: 21,
                                  minHeight: 21,
                                  maxHeight: 21),
                              icon: Image.asset(
                                "assets/img/ic_dummy_country_2.png",
                                width: 21,
                              ),
                              onPressed: () {},
                            )),
                        suffixIcon: Container(
                            margin: const EdgeInsets.only(right: 16),
                            width: 11,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              constraints: const BoxConstraints(
                                  minWidth: 11, maxWidth: 11),
                              icon: Image.asset(
                                "assets/img/ic_dropdown_arrow.png",
                                width: 25,
                              ),
                              onPressed: () {
                                setState(() {

                                });
                              },
                            ))),
                    style: TextStyles.signUpInputStyle,
                  ),
                ),
              )
            ],
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
                        builder: (context) => CreateAccountStep8Screen()));
              },
              child: Text(S.current.continue_option),
            ),
          )
        ],
      ),
    );
  }
}
