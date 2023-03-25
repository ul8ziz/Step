import 'package:Step/screens/home/home_screen.dart';
import 'package:Step/screens/onBoarding/OnBoarding.dart';
import 'package:Step/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BottomNavBar.dart';
import 'components/GetStorage.dart';
import 'components/size_config.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  var isShowOnBoardingPageValue = readGetStorage(isShowOnBoardingPage);
  var isShowLoginPageValue = readGetStorage(isShowLoginPage);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Future.delayed(const Duration(seconds: 2), () {
      if (isShowOnBoardingPageValue != null) {
        if (isShowLoginPageValue != null) {
          Get.offAll(BottomNavBar());
        }
        else{
        Get.offAll(SignInScreen());
        }
      }else {
        Get.offAll( OnBoarding());
      }
    });
    return SafeArea(
        child: Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fitWidth),
              color: Colors.white,
            ),
            ),
          ),
        );
  }
}
