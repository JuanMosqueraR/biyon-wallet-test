import 'package:code/generated/l10n.dart';
import 'package:code/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountStepHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      margin: const EdgeInsets.only(right: 8, top: 48, left: 16),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Text(S.current.sign_up_create_account_step_of,
                  style: TextStyles.signUpStepStyle,
                  textAlign: TextAlign.center)),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  padding: EdgeInsets.zero,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Image.asset(
                    "assets/img/ic_close_grey.png",
                    width: 25,
                  ),
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context))),
        ],
      ),
    );
  }
}