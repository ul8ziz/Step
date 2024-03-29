import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../Controllers/NotificationController.dart';
import '../../Controllers/ResultController.dart';
import '../../Controllers/UserInfoController.dart';
import '../../components/GetStorage.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../Fees/Fees_Screen.dart';
import '../Notebook/Notebook_Screen.dart';
import '../Results/Results_Screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'components/home_header.dart';

class HomeScreen extends StatelessWidget {
  final NotificationController notificationController = Get.put(NotificationController());
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
              OfferWidget(context),
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
                        items(title: 'FollowUpBook'.tr,
                            goTo: (){ Get.to(Notebook_Screen());},
                          svgFile: "assets/icons/notbook.svg"
                        ),
                        items(title: 'FeeNotices'.tr,
                            goTo: (){ Get.to(Fees_Screen());},
                            svgFile: "assets/icons/notfation.svg"
                        ),
                        items(title: 'ResultsNotifications'.tr,
                            goTo: (){ Get.to(Results_Screen());},
                            svgFile: "assets/icons/pngegg.svg"
                        ),
                         items(title: 'studentWeek'.tr,
                               goTo: (){
                                 // Get.to(Results_Screen());
                               },
                               svgFile: "assets/icons/notes.svg"
                           ),
                      ],
                    )),
              ),
            ],
          ),
        )),
      ),
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
  Widget imagee(String thumbnail) {
    String placeholder = "$thumbnail";
    if (thumbnail?.isEmpty ?? true)
      thumbnail = placeholder;
    else {
      if (thumbnail.length % 4 > 0) {
        thumbnail += '=' * (4 - thumbnail .length % 4); // as suggested by Albert221
      }
    }
    final _byteImage = Base64Decoder().convert(thumbnail);
    Widget image = Image.memory(_byteImage);
    return image;
  }
  Widget OfferWidget(context) {
    return
      Visibility(
          visible: true,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
                child: Swiper(
                  duration:1500,
                  viewportFraction : .8,
                  outer: true,
                  itemCount: 3,
                  autoplay: true,
                  layout: SwiperLayout.DEFAULT,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: MediaQuery.of(context).size.height * .2,
                        width:  MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFCDCDCD)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/logoo.png"),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        )
                    );
                    var i =index;
                  },
                  pagination: SwiperPagination(
                      builder:  SwiperCustomPagination(builder: (BuildContext context, SwiperPluginConfig config) {
                        return
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < 3; i++)
                                  i==config.activeIndex?
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 2),
                                    height: 4,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ):
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 2),
                                    height: 4,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFCDCDCD),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                              ],
                            ),
                          );
                      }
                      )
                  ),
                ),
              ),
            ],
          )
      );
  }
  Widget items( {title,goTo,svgFile}){
    return
      InkWell(
      onTap: goTo,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 9,
                offset: const Offset(0, 0)
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
        textAlign: TextAlign.center,
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
