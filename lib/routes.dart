import 'package:dial_insurance/screens/home_screen/home_screen.dart';
import 'package:dial_insurance/screens/landing/landing_screen.dart';
import 'package:dial_insurance/screens/login/login_screen.dart';
import 'package:dial_insurance/screens/register/register_screen.dart';
import 'package:dial_insurance/screens/wrapper.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Wrapper.routeName: (context) => Wrapper(),
  LoginScreen.routeName: (context) => LoginScreen(),
  LandingScreen.routeName: (context) => LandingScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
