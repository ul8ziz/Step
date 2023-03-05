import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Step/components/coustom_bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/constants.dart';
import '../../main.dart';
import '../Privacy_policy/Privacy_Policy_ٍScreen.dart';
import '../team/Team_screen.dart';

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
        child: Directionality(
          textDirection: TextDirection.rtl ,
          child: Column(
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black54,
                        width: 2.5,
                      ),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                          backgroundColor:kPrimaryColor,
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
              ),
              SizedBox(height: 20),
              ProfileMenu(
                text: "حسابي",
                //text: "My Account",
                icon: "assets/icons/User Icon.svg",
                press: () => {},
              ),
              ProfileMenu(
                text: "الاشعارات",
                //text: "Notifications",
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "الاعدادات",
               // text: "Settings",
                icon: "assets/icons/Settings.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "فريق المشروع",
               // text: "Help Center",
                icon: "assets/icons/Discover.svg",
                press: () {
                  Get.to( Team_screen());

                },
              ), ProfileMenu(
                text: "سياسة الخصوصية",
               // text: "Help Center",
                icon: "assets/icons/Question mark.svg",
                press: () {
                  Get.to( Privacy_policy_Screen());

                },
              ),
              ProfileMenu(
                text: "تسجيل الخروج",
               // text: "Log Out",
                icon: "assets/icons/Log out.svg",
                press: () {},
              ),
            ],
          ),
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
