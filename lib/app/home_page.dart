import 'package:flutter/material.dart';
import 'package:llllllll/app/about_page.dart';
import 'package:llllllll/app/home/app_bar.dart';
import 'package:llllllll/app/home/home_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
    super.initState();
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HomeAppBar(),
              Expanded(
                child: PageView(
                  children: [
                    SingleChildScrollView(
                      child: HomeBody(),
                    ),
                    SingleChildScrollView(
                      child: AboutPage(),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
