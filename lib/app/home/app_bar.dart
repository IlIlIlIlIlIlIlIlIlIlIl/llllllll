import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llllllll/app/home/menu_element.dart';

Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.16))
            ]),
        child: Row(
          children: <Widget>[
            Image.asset(
              "images/google-logo.png",
              height: 25,
              alignment: Alignment.topCenter,
            ),
            SizedBox(width: 15),
            Text(
              "llllll.dev",
              style: GoogleFonts.quicksand(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            MenuElement(
              title: "Home",
              press: () {},
            ),
            MenuElement(
              title: "About",
              press: () {},
            ),
            MenuElement(
              title: "Contact",
              press: () {},
            ),
            MenuElement(
              title: "Logout",
              press: _signOut,
            )
          ],
        ));
  }
}


