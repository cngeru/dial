import 'package:dial_insurance/routes.dart';
import 'package:dial_insurance/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/wrapper",
      routes: routes,
      theme: ThemeData(fontFamily: 'Comfortaa'),
      home: Wrapper(),
    );
  }
}
