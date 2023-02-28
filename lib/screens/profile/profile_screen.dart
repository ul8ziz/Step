import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Step/components/coustom_bottom_nav_bar.dart';

import '../../components/constants.dart';
import '../../main.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Profile Image.png"),
                  ),
                  Positioned(
                    right: -16,
                    bottom: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.white),
                          ),
                          primary: Colors.white,
                          backgroundColor: Color(0xFFF5F6F9),
                        ),
                        onPressed: () {},
                        child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
    Widget ProfileMenu({
        required text,
        required icon,
        press,}){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: kPrimaryColor,
            padding: EdgeInsets.all(20),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xFFF5F6F9),
          ),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                color: kPrimaryColor,
                width: 22,
              ),
              SizedBox(width: 20),
              Expanded(child: Text(text)),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      );
    }
}
