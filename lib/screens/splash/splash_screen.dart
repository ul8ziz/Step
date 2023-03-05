import 'package:flutter/material.dart';
import 'package:Step/components/size_config.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Step/components/constants.dart';
import 'package:Step/screens/sign_in/sign_in_screen.dart';
import '../../../components/default_button.dart';
import '../../components/GetStorage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    int currentPage = 0;
    List<Map<String, String>> splashData = [
      {
        "title": "اشعارات دفتر المتابعة",

        "text": """عزيزي أولياء أموار الطلاب يمكنكم 
        معرفةومتابعة دروس اولادكم المقرر لهم """,
        "image": "assets/images/splash_1.png"
      },
      {
        "title": "اشعارات النتائج",

        "text":
       """عزيزي أولياء أموار الطلاب يمكنكم معرفة
      معرفة نتائج أولادكم فور أعلناها """,
        "image": "assets/images/splash_2.png"
      },
      {
        "title": "اشعارات الرسوم الدراسية ",

        "text": """عزيزي أولياء أموار الطلاب يمكنكم معرفة
       الأقساط المتبقية على أولادكم """,
        "image": "assets/images/splash_3.png"
      },
    ];
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Directionality(
        textDirection:TextDirection.rtl,
        child: SafeArea(
        child: Material(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                  title: splashData[index]['title'],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "تخطي",
                      press: () {
                        writeGetStorage(isShowOnBoardingPage,true);
                        Get.offAll( SignInScreen());
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ))
        ),
    );

  }
    AnimatedContainer buildDot({int? index}) {
      return AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 9,
        width: currentPage == index ? 40 : 22,
        decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3),
        ),
      );
    }
    Widget SplashContent({text, image,title}) {
      return Column(
        children: <Widget>[
          Spacer(flex: 2),
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text!,
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 1),
          Image.asset(
            image!,
            height: getProportionateScreenHeight(299),
            width: getProportionateScreenWidth(299),
          ),
        ],
      );
    }

}
