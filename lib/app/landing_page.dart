import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:llllllll/app/home_page.dart';
import 'package:llllllll/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;
  bool _syncCalled = false;
  bool _syncDone = false;

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User user) => _updateUser(user));
    super.initState();
  }

  void _updateUser(User user) {
    setState(() {
      _user = user;
    });
  }

  void _getFutureSync() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      print('Firebase Sync Done');
      setState(() {
        _syncDone = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      if (_syncDone == true) {
        return SignInPage();
      } else {
        if (_syncCalled == false) {
          _getFutureSync();
          _syncCalled = true;
        }
        return SpinKitCircle(
          color: Colors.black,
          size: 50.0,
          duration: Duration(milliseconds: 1000),
        );
      }
    }
    return HomePage();
  }
}
