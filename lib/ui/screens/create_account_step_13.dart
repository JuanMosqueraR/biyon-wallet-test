import 'package:code/data/veriff_session_request.dart';
import 'package:code/generated/l10n.dart';
import 'package:code/repositories/impl/veriff_repository_impl.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/styles/veriff_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veriff_flutter/veriff_flutter.dart';

class CreateAccountStep13Screen extends StatefulWidget {
  @override
  State createState() => _CreateAccountStep13State();
}

class _CreateAccountStep13State extends State<CreateAccountStep13Screen> {
  late Configuration config;
  late Veriff veriff;

  @override
  void initState() {
    veriff = Veriff();
    super.initState();
  }

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
                final request = VeriffSessionRequest(
                  verification: Verification(
                    callback: 'https://veriff.me',
                    // document: VeriffDocument(
                    //   country: code,
                    //   type: veriffProvider.type,
                    // ),
                    person: Person(
                      // TODO: 24-Aug-23 replace
                      firstName: "Juan Mosqquera",
                    ),
                  ),
                );
                await VeriffRepositoryImpl()
                    .getSession(request)
                    .then((veriffSession) async {
                  if (veriffSession != null) {
                    config = Configuration(
                      veriffSession.verification.url,
                      branding: VeriffTheme.veriffBranding,
                    );
                    try {
                      final res = await veriff.start(config);
                      print('VERIFF STATUS: ' + res.status.name);
                      if (res.status == Status.done) {

                        print(" DONEEEE ");
                      }
                    } on PlatformException {
                      throw Exception();
                    }
                  } else {
                    print('r IS NULL?');
                  }
                });
              },
              child: Text(S.current.continue_option),
            ),
          )
        ]));
  }
}
