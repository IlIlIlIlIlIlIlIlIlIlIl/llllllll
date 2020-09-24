import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuElement extends StatelessWidget {
  final String title;
  final Function press;
  const MenuElement({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(title,
            style: GoogleFonts.quicksand(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700].withOpacity(0.7),
            )),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      onPressed: press,
    );
  }
}
