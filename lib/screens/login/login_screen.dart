import 'package:clay_containers/widgets/clay_container.dart';
import 'package:dial_insurance/components/edit_text_field.dart';
import 'package:dial_insurance/components/shared.dart';
import 'package:dial_insurance/components/social_card.dart';
import 'package:dial_insurance/constants.dart';
import 'package:dial_insurance/screens/home_screen/home_screen.dart';
import 'package:dial_insurance/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LandingScreen()),
                      (route) => false);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: kPrimaryColor,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 80, 10, 0),
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
                            height: SizeConfig.screenHeight * 0.75,
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
                                      Icons.person_outline_rounded,
                                      size: 100,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(15),
                                  ),
                                  Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(24),
                                        fontWeight: FontWeight.w900,
                                        color: kPrimaryColor),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(25),
                                  ),
                                  EditTextField(
                                    controller: _emailController,
                                    obscureBool: false,
                                    hintText: "Email",
                                    prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.mail_outline_outlined)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(25),
                                  ),
                                  EditTextField(
                                    controller: _emailController,
                                    obscureBool: false,
                                    hintText: "Password",
                                    prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.lock_outline_rounded)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(40),
                                  ),
                                  MaterialButton(
                                    height: getProportionateScreenHeight(40),
                                    color: kPrimaryColor,
                                    minWidth: SizeConfig.screenWidth * 0.85,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                    onPressed: () {
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (contex) =>
                                                  HomeScreen()),
                                          (route) => false);
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
                                  Text(
                                    "Sign up or login with",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(16)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(25),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SocialCard(
                                        icon: "assets/icons/google-icon.svg",
                                        press: () {},
                                      ),
                                      SocialCard(
                                        icon: "assets/icons/facebook-2.svg",
                                        press: () {},
                                      ),
                                      SocialCard(
                                        icon: "assets/icons/twitter.svg",
                                        press: () {},
                                      ),
                                    ],
                                  )
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
