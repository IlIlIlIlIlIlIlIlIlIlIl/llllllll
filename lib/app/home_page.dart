import 'package:flutter/material.dart';
import 'package:llllllll/app/home/app_bar.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/main_bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              HomeAppBar(),
            ],
          )),
    );
  }
}
