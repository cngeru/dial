import 'dart:math';

import 'package:clay_containers/widgets/clay_container.dart';
import 'package:dial_insurance/components/product_card.dart';
import 'package:dial_insurance/components/shared.dart';
import 'package:dial_insurance/components/user_profile_img.dart';
import 'package:dial_insurance/constants.dart';
import 'package:dial_insurance/models/products_card_model.dart';
import 'package:dial_insurance/screens/home_screen/components/page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageNotifier _pageNotifier = PageNotifier();

  int _previousIndex = 0;
  int _currentIndex = 0;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_sharp,
            color: kPrimaryColor,
            size: 48,
          ),
        ),
        actions: [
          Row(
            children: [
              Text(
                "Dashboard",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: getProportionateScreenHeight(18)),
              ),
              SizedBox(
                width: getProportionateScreenWidth(30),
              ),
              UserProfileImg(
                imgURl: "assets/images/profImg.jpg",
              ),
              Padding(padding: EdgeInsets.only(right: 10))
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: ChangeNotifierProvider(
          create: (_) => _pageNotifier,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 16, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                      color: kPrimaryColor),
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * 0.31,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Policy Number",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            getProportionateScreenHeight(16),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "009909819817",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            getProportionateScreenHeight(18)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(15),
                                  ),
                                  Text(
                                    "Name Insured",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            getProportionateScreenHeight(16),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "Joseph K Koech",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            getProportionateScreenHeight(18)),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: SizeConfig.screenWidth * 0.4,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8))),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("GOLD"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(16),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            color: Colors.white,
                            width: SizeConfig.screenWidth,
                            height: SizeConfig.screenHeight * 0.001,
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(16),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Surrender value",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "KES 45,000.00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(20),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Prem. Amt Due",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "KES 5,000.00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(20),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Prem. Due Date",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "09/08/2021",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(30),
                        ),
                        Row(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Policy Detail",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.3,
                            ),
                            MaterialButton(
                              color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                "Make Payment",
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    "Our recommended products for you",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: getProportionateScreenHeight(18)),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(200),
                  width: SizeConfig.screenWidth,
                  child: _buildCardList(),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    "News & Updates",
                    style: TextStyle(
                        fontSize: getProportionateScreenHeight(18),
                        color: kPrimaryColor),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getProportionateScreenWidth(100),
                      height: getProportionateScreenHeight(100),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Image.asset("assets/images/profImg.jpg"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Prepapre For Your Car's Future From Now",
                              style: TextStyle(
                                  fontSize: getProportionateScreenHeight(15),
                                  fontWeight: FontWeight.w900,
                                  color: kPrimaryColor),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(5),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod tincidunt ut Lorem ipsum dolor sit amet,consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam",
                              overflow: TextOverflow.clip,
                              softWrap: true,
                              textAlign: TextAlign.start,
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildCardList() => Expanded(
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          controller: _pageNotifier.pageController,
          onPageChanged: (index) => setState(() {
            _previousIndex = _currentIndex;
            _currentIndex = index;
          }),
          itemBuilder: (context, index) {
            return Consumer<PageNotifier>(
              builder: (context, value, child) {
                if (value.currentCard > index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: child,
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: child,
                );
              },
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: getProportionateScreenWidth(300),
                  height: SizeConfig.screenHeight * 0.3,
                  child: ProductsCard(
                    data: products[index],
                  ),
                ),
              ),
            );
          },
        ),
      );
}
