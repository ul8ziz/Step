import 'package:flutter/material.dart';
import 'package:Step/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../../main.dart';
import '../Fees/Fees_Screen.dart';
import '../Notebook/Notebook_Screen.dart';
import '../Results/Results_Screen.dart';
import 'components/body.dart';
import 'components/home_header.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 50,),
              Container(
                height: 150,
                width: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 5)),
                    ],
                  )
              ),
              SizedBox(height: 10,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               widgetButtonSwiper(color: kPrimaryColor),
               widgetButtonSwiper(color: Colors.black12),
               widgetButtonSwiper(color: Colors.black12),
             ],),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .06),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .005),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: MediaQuery.of(context).size.width * .04,
                      mainAxisSpacing: MediaQuery.of(context).size.width * .04,
                      crossAxisCount: 2,
                      children: <Widget>[
                        items(title: 'دفتر المتابعه',
                            goTo: (){ Get.to(Notebook_Screen());},
                          svgFile: "assets/icons/notbook.svg"
                        ),
                        items(title: 'اشعارات الرسوم ',
                            goTo: (){ Get.to(Fees_Screen());},
                            svgFile: "assets/icons/notfation.svg"
                        ),
                        items(title: 'اشعارات النتائج',
                            goTo: (){ Get.to(Results_Screen());},
                            svgFile: "assets/icons/pngegg.svg"
                        ),
                        items(title: 'ملاحظات',
                            goTo: (){ Get.to(Results_Screen());},
                            svgFile: "assets/icons/notes.svg"
                        ),
                      ],
                    )),
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
  widgetButtonSwiper({color}) {
    return Container(
      margin: EdgeInsets.all(getProportionateScreenHeight(5)),
      height: getProportionateScreenHeight(10),
      width: getProportionateScreenWidth(10),
      decoration: BoxDecoration(
          color: color ?? kPrimaryColor,
          borderRadius: BorderRadius.circular(20)),
    );
  }

  Widget items( {title,goTo,svgFile}){
    return  InkWell(
      onTap: goTo,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: const Offset(2, 2)
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Container(
          width: 60,
          height: 60,
          child:  SvgPicture.asset(
          svgFile,color: kPrimaryColor,),
        ),

        Text(title,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.normal,
          fontSize: 18,
        ),
        ),
          ],
        ),
      ),
    );
  }
}
