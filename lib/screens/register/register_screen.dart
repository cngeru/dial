import 'package:clay_containers/widgets/clay_container.dart';
import 'package:dial_insurance/components/edit_text_field.dart';
import 'package:dial_insurance/components/shared.dart';
import 'package:dial_insurance/components/social_card.dart';
import 'package:dial_insurance/constants.dart';
import 'package:dial_insurance/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static String routeName = "/register";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
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
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                                      Icons.person_add_alt_1_outlined,
                                      size: 80,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                  Text(
                                    "Registration",
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(24),
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(25),
                                  ),
                                  EditTextField(
                                    controller: _emailController,
                                    obscureBool: false,
                                    hintText: "First Name",
                                    prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.person)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  EditTextField(
                                    controller: _emailController,
                                    obscureBool: false,
                                    hintText: "Last Name",
                                    prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.person)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  EditTextField(
                                    controller: _emailController,
                                    obscureBool: false,
                                    hintText: "Phone Number",
                                    prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.phone)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
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
                                    height: getProportionateScreenHeight(20),
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
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  EditTextField(
                                    controller: _emailController,
                                    obscureBool: false,
                                    hintText: "Confirm Password",
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
                                    onPressed: () {},
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              getProportionateScreenHeight(18)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
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
