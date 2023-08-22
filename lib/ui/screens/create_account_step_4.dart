import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account_step_5.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/input_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/widgets/create_account_step_header.dart';
import 'package:flutter/material.dart';

class CreateAccountStep4Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep4State();
}

class _CreateAccountStep4State extends State<CreateAccountStep4Screen> {
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
                const SizedBox(height: 24),
                Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text(
                      S.current.sign_up_protect_your_account,
                      style: TextStyles.signUpTitleStyle,
                    )),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text(
                    S.current.sign_up_write_your_phone_number,
                    style: TextStyles.signUpDescriptionStyle,
                  ),
                ),
                const SizedBox(height: 9),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text(
                    S.current.sign_up_write_your_phone_number_description,
                    style: TextStyles.signUpDescriptionStyle,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 33),
                          child: Text(
                            S.current.sign_up_country,
                            style: TextStyles.signUpFieldStyle,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 87,
                          margin: const EdgeInsets.only(left: 21),
                          child: SizedBox(
                            height: 49,
                            child: TextFormField(
                              autofocus: false,
                              autocorrect: false,
                              enableSuggestions: false,
                              decoration: InputStyles
                                  .signUpInputPrefixSuffixDecoration
                                  .copyWith(
                                      hintText: S.current.sign_up_country_hint,
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
                                              "assets/img/ic_dummy_country.png",
                                              width: 21,
                                            ),
                                            onPressed: () {},
                                          ))),
                              style: TextStyles.signUpInputStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Text(
                            S.current.sign_phone_number,
                            style: TextStyles.signUpFieldStyle,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 20),
                          child: SizedBox(
                            height: 49,
                            child: TextFormField(
                              autofocus: false,
                              autocorrect: false,
                              enableSuggestions: false,
                              textCapitalization: TextCapitalization.none,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputStyles.signUpInputDecoration
                                  .copyWith(
                                      hintText:
                                          S.current.sign_phone_number_hint),
                              style: TextStyles.signUpInputStyle,
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                )
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
                        builder: (context) => CreateAccountStep5Screen()));
              },
              child: Text(S.current.continue_option),
            ),
          )
        ],
      ),
    );
  }
}
