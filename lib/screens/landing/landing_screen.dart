import 'package:clay_containers/widgets/clay_container.dart';
import 'package:dial_insurance/components/edit_text_field.dart';
import 'package:dial_insurance/components/shared.dart';
import 'package:dial_insurance/components/social_card.dart';
import 'package:dial_insurance/constants.dart';
import 'package:dial_insurance/screens/login/login_screen.dart';
import 'package:dial_insurance/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  static String routeName = "/landing";

  @override
  _LandingScreen createState() => _LandingScreen();
}

class _LandingScreen extends State<LandingScreen>
    with TickerProviderStateMixin {
  TextEditingController _emailController;
  TextEditingController _passwordContorller;
  final _formKey = GlobalKey<FormState>();
  bool visible = false;
  final _obscureText = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordContorller = TextEditingController();
    visible = true;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordContorller.dispose();
    visible = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
            body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 120, 10, 0),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClayContainer(
                        borderRadius: 16,
                        depth: 12,
                        spread: 12,
                        color: kClayContainerColor,
                        height: SizeConfig.screenHeight * 0.5,
                        width: SizeConfig.screenWidth * 0.85,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Center(
                                child: Icon(
                                  Icons.self_improvement_outlined,
                                  size: 100,
                                  color: kPrimaryColor,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(15),
                              ),
                              Text(
                                "Getting Started",
                                style: TextStyle(
                                    fontSize: getProportionateScreenHeight(24),
                                    fontWeight: FontWeight.w900,
                                    color: kPrimaryColor),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text(
                                  "Our car policies are enough for you to make a decision to cover your car be it for work, family or personal",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          getProportionateScreenHeight(16)),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              MaterialButton(
                                height: getProportionateScreenHeight(40),
                                color: kPrimaryColor,
                                minWidth: SizeConfig.screenWidth * 0.85,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          getProportionateScreenHeight(18)),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              MaterialButton(
                                height: getProportionateScreenHeight(40),
                                color: kPrimaryColor,
                                minWidth: SizeConfig.screenWidth * 0.85,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                  );
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          getProportionateScreenHeight(18)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )));
  }
}
