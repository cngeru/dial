import 'package:dial_insurance/screens/landing/landing_screen.dart';
import 'package:dial_insurance/screens/login/login_screen.dart';
import 'package:dial_insurance/size_config.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  static String routeName = "/wrapper";

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LandingScreen();
  }
}
