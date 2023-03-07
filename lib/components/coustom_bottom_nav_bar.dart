import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:Step/screens/home/home_screen.dart';
import 'package:Step/screens/profile/profile_screen.dart';

import '../main.dart';
import '../screens/Latters/Latters.dart';
import 'constants.dart';

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
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    "assets/icons/notification.svg",
                    color: MenuState.notification == selectedMenu
                        ? kPrimaryColor : inActiveIconColor,),
                ),iconSize:3 ,
                onPressed: () =>
                    Get.to( Latters()),
              ),
              IconButton(
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    "assets/icons/homegray.svg",
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor : inActiveIconColor,),
                ),iconSize:3 ,
                onPressed: () =>
                    Get.to( HomeScreen()),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Settings.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor : inActiveIconColor,
                ),
                onPressed: () =>
                    Get.to( ProfileScreen()),
              ),
            ],
        )
      ),
    );
  }
}
