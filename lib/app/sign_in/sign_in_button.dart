import 'package:flutter/material.dart';
import 'package:llllllll/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    String text,
    String logo,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          height: 50,
          color: color,
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
