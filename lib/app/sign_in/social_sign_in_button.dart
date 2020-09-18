import 'package:flutter/material.dart';
import 'package:llllllll/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    String text,
    String logo,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('images/' + logo + '-logo.png'),
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset('images/google-logo.png'),
              )
            ],
          ),
          height: 50,
          color: color,
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
