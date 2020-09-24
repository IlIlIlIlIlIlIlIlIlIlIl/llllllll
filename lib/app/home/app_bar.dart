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
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.20))
            ]),
        child: Row(
          children: <Widget>[
            Image.asset(
              "images/2.0x/logo.png",
              height: 50,
              alignment: Alignment.topCenter,
            ),
            Text(
              ".dev",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            MenuElement(
              title: "Home",
              press: () {},
            ),
            SizedBox(width: 15),
            MenuElement(
              title: "About",
              press: () {},
            ),
            SizedBox(width: 15),
            MenuElement(
              title: "Contact",
              press: () {},
            ),
            SizedBox(width: 15),
            MenuElement(
              title: "Logout",
              press: _signOut,
            )
          ],
        ));
  }
}


