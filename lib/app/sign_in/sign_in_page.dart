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
    return Scaffold(
      body: Container(
        child: _buildContent(),
        alignment: Alignment.center,
      ),
      backgroundColor: Colors.grey[300],
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
        SizedBox(height: 8.0),
        SocialSignInButton(
          text: "Facebook",
          logo: "facebook",
          color: Color(0xFF334D92),
          textColor: Colors.white,
          onPressed: () {},
        ),
        SizedBox(height: 8.0),
        SignInButton(
          text: "Email",
          color: Colors.teal[300],
          textColor: Colors.black87,
          onPressed: () {},
        ),
        SizedBox(height: 8.0),
        SignInButton(
          text: "Anonymous",
          color: Colors.grey[400],
          textColor: Colors.black87,
          onPressed: _signInAnonymously,
        )
      ],
    );
  }
}
