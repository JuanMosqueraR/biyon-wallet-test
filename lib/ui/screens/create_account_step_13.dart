import 'package:code/generated/l10n.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStep13Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep13State();
}

class _CreateAccountStep13State extends State<CreateAccountStep13Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          SingleChildScrollView(
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             CreateAccountStep10Screen()));
                          },
                          child: Text(
                            S.current.skip_option,
                            style: TextStyles.actionBarTextStyle,
                          ),
                        )),
                  ]),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  "assets/img/ic_sign_up_verify_document.png",
                  width: 262,
                ),
                const SizedBox(height: 28),
                Text(
                  S.current.sign_up_verify_document,
                  style: TextStyles.signUpTitleStyle,
                ),
                const SizedBox(height: 26),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Text(
                      S.current.sign_up_verify_document_description,
                      style: TextStyles.signUpDescriptionStyle,
                      textAlign: TextAlign.center,
                    )),
              ])),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 16),
            child: ElevatedButton(
              style: ButtonStyles.primaryButtonStyle,
              onPressed: () async {
                // Navigator.push(
                // context,
                // MaterialPageRoute(
                // builder: (context) => CreateAccountStep3Screen()));
              },
              child: Text(S.current.sign_up_go_to_email),
            ),
          )
        ]));
  }
}
