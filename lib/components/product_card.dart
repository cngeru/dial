import 'package:dial_insurance/components/shared.dart';
import 'package:dial_insurance/constants.dart';
import 'package:dial_insurance/models/products_card_model.dart';
import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  final ProductsCardData data;

  const ProductsCard({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              image: DecorationImage(
                  image: NetworkImage(data.imgUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.dstATop))),
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  data.strA,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenHeight(14),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  data.strPrct,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenHeight(18),
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  data.strFor,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(12),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  data.strInsName,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: getProportionateScreenHeight(14)),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                MaterialButton(
                    minWidth: getProportionateScreenWidth(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      data.strLook,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: getProportionateScreenHeight(12),
                        fontWeight: FontWeight.w600,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
