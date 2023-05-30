import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../BottomNavBar.dart';
import '../../Controllers/UserInfoController.dart';
import '../../Global/transaltion.dart';
import '../../components/GetStorage.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../Privacy_policy/Privacy_Policy_ٍScreen.dart';
import '../sign_in/sign_in_screen.dart';
import '../team/Team_screen.dart';

class ProfileScreen extends StatelessWidget {
  languageController controller = Get.put(languageController());
  final UserInfoController userInfoController = Get.put(UserInfoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl ,
            child: Column(
              children: [
                Row(
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
                                offset: const Offset(0, 2)
                            ),
                          ],
                        ),
                        child:Center(child: Text('الاعدادات',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),)
                        ),
                      ),]
                ),
                SizedBox(height: 20,),
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
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Center(child:
                    Text('${readGetStorage(userInfoname)}'
                      ,style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15
                      ),
                    ),
                    ),
                    Center(child:
                    Text('${readGetStorage(userInfoKeyfather_phone)}'
                      ,style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                /*
                ProfileMenu(
                  text: "حسابي",
                  icon: "assets/icons/User Icon.svg",
                  press: () => {},
                ),*/
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 350,
                    height: 65,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF5F6F9),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.language,color: kPrimaryColor,),
                      SizedBox(width: 5,),
                      Expanded(
                          child: DropdownButton(
                            isExpanded: true,
                            underline: DropdownButtonHideUnderline(
                                child: Container()),
                            iconEnabledColor: kPrimaryColor,
                            borderRadius:
                            BorderRadius.circular(12),
                            hint: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .03),
                              child: Text('اللغة',
                              style: TextStyle(
                                color: kPrimaryColor
                              ),)
                          ),
                            items: [
                              DropdownMenuItem(
                                  child: Text('عربي',),
                                  value: "عربي",
                                  onTap: () {
                                    controller
                                        .changeLanguageArabic();
                                    Get.offAll(BottomNavBar(i: 2,));

                                  }),
                              DropdownMenuItem(
                                  child: Text(
                                    'English',
                                  ),
                                  value: "English",
                                  onTap: () {
                                    controller.changeLanguageEnglish();
                                    Get.offAll(BottomNavBar(i: 2,));
                                  }),
                            ],
                            onChanged: (value) {},
                          )),
                    ],
                  ),
                ),
                /*SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 350,
                    height: 65,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF5F6F9),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.light_mode,color: kPrimaryColor,),
                      SizedBox(width: 5,),
                      Expanded(
                          child: DropdownButton(
                            isExpanded: true,
                            underline: DropdownButtonHideUnderline(
                                child: Container()),
                            iconEnabledColor: kPrimaryColor,
                            borderRadius:
                            BorderRadius.circular(12),
                            hint: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .03),
                              child: Text('ثيم',
                              style: TextStyle(
                                color: kPrimaryColor
                              ),)
                          ),
                            items: [
                              DropdownMenuItem(
                                  child: Text('داكن',),
                                  value: "عربي",
                                  onTap: () {
                                    controller
                                        .changeLanguageArabic();

                                  }),
                              DropdownMenuItem(
                                  child: Text(
                                    'فاتح',
                                  ),
                                  value: "English",
                                  onTap: () {
                                    controller.changeLanguageEnglish();
                                  }),
                            ],
                            onChanged: (value) {},
                          )),
                    ],
                  ),
                ),*/
                ProfileMenu(
                  text: "فريق المشروع",
                 // text: "Help Center",
                  icon: "assets/icons/Discover.svg",
                  press: () {
                    Get.to( Team_screen());

                  },
                ),
                ProfileMenu(
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
                  press: () {
                    Get.bottomSheet(
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * .2),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .06,
                              right: MediaQuery.of(context).size.width * .06,
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * .03,
                              vertical:
                              MediaQuery.of(context).size.width * .03,
                            ),
                            height: MediaQuery.of(context).size.height * .18,
                            width: MediaQuery.of(context).size.width * .8,
                            child: SizedBox(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Text(
                                        'تسجيل الخروج',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18
                                        ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child:
                                            Container(
                                              alignment:
                                              Alignment
                                                  .center,
                                              decoration: BoxDecoration(
                                                  color:
                                                  Colors.grey,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8)),
                                              width: MediaQuery.of(
                                                  context)
                                                  .size
                                                  .width *
                                                  .3,
                                              height: MediaQuery.of(
                                                  context)
                                                  .size
                                                  .height *
                                                  .05,
                                              child: Text(
                                                  'الغاء'
                                                      .tr,
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  )),
                                            )),
                                        InkWell(
                                            onTap: () {
                                              clearGetStorage(isShowOnBoardingPage);
                                              clearGetStorage(isShowLoginPage);
                                              clearGetStorage(userInfoKey);
                                              clearGetStorage(userInfoname);
                                              clearGetStorage(userInfoid);
                                              clearGetStorage(userInfoKeyfather_phone);
                                              Get.offAll(SignInScreen());
                                            },
                                            child:
                                            Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color:kPrimaryColor,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8)),
                                              width: MediaQuery.of(
                                                  context)
                                                  .size
                                                  .width *
                                                  .3,
                                              height: MediaQuery.of(
                                                  context)
                                                  .size
                                                  .height *
                                                  .05,
                                              child:
                                             Text(
                                                'موافق',
                                                 style: TextStyle(
                                                     color: Colors.white
                                                 )),
                                            )),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );

                  },
                ),
              ],
            ),
          ),
        ),
      ),
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
