import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../components/size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    Container(
    height:getProportionateScreenHeight(60),
    width:SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Color(0xFFF5F6F9),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: -2,
              blurRadius: 9,
              offset: const Offset(0, 2)),
        ],
      ),
      child:Center(child: Text('الرئيسية',
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),)),
      /* TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            prefixIcon: Icon(Icons.search)),
      ),
    ),
         IconBtnWithCounter(
          svgSrc: "assets/icons/Cart Icon.svg",
          press: () => Navigator.pushNamed(context, CartScreen.routeName),
        ),
        IconBtnWithCounter(
          svgSrc: "assets/icons/Bell.svg",
          numOfitem: 3,
          press: () {},
        ),*/
    ),]
    );
  }
}
