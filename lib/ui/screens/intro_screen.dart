import 'package:code/generated/l10n.dart';
import 'package:code/ui/screens/create_account.dart';
import 'package:code/ui/styles/button_styles.dart';
import 'package:code/ui/styles/color.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:code/ui/widgets/modal_bottom_sheets/login_bottom_sheet.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: AppColor.colorPrimary,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/img/ic_intro_logo.png",
                width: 204,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ButtonStyles.primaryButtonStyle,
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccountScreen()));
                    },
                    child: Text(S.current.create_account),
                  ),
                  const SizedBox(height: 24),
                  GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return LoginBottomSheetScreen();
                          },
                        );
                      },
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textWhiteBellowButtonStyle,
                            text: S.current.already_account),
                        TextSpan(
                            style:
                                TextStyles.textWhiteBellowButtonStyle.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                            text: S.current.sign_in)
                      ])))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
