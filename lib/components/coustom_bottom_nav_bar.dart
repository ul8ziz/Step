import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:Step/screens/home/home_screen.dart';
import 'package:Step/screens/profile/profile_screen.dart';

import '../main.dart';
import 'constants.dart';
import '../screens/cart/cart_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40),),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
                  color: MenuState.favourite == selectedMenu
                      ? kPrimaryColor : inActiveIconColor,),
                onPressed: () {
                  Get.to(()=> CartScreen());
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/homegray.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor : inActiveIconColor,
                ),
                onPressed: () =>
                    Get.to(()=> HomeScreen()),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor : inActiveIconColor,
                ),
                onPressed: () =>
                    Get.to(()=> ProfileScreen()),
              ),
            ],
        )
      ),
    );
  }
}
