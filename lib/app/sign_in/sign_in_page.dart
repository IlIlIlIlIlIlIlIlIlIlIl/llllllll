import 'package:flutter/material.dart';
import 'package:llllllll/app/sign_in/sign_in_button.dart';
import 'package:llllllll/app/sign_in/social_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      print('${authResult.user.uid}');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/landing_bg.jpg"),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        body: Container(
          child: _buildContent(),
          alignment: Alignment.center,
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialSignInButton(
          text: "Google",
          logo: "google",
          color: Colors.white,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        SizedBox(height: 12.0),
        SocialSignInButton(
          text: "Facebook",
          logo: "facebook",
          color: Color(0xFF334D92),
          textColor: Colors.white,
          onPressed: () {},
        ),
        SizedBox(height: 12.0),
        SignInButton(
          text: "Email",
          color: Colors.teal[300],
          textColor: Colors.white,
          onPressed: () {},
        ),
        SizedBox(height: 12.0),
        SignInButton(
          text: "Anonymous",
          color: Colors.grey[400],
          textColor: Colors.white,
          onPressed: _signInAnonymously,
        )
      ],
    );
  }
}
