import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/constants.dart';
import '../../../components/size_config.dart';

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
      child:Center(child: Text('notifications'.tr,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),)),

    ),
      ]
    );
  }
}
