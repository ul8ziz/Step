import 'package:Step/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/NotificationController.dart';
import '../../components/size_config.dart';
import '../Notification/components/home_header.dart';

class Latters extends StatelessWidget {
  final NotificationController notificationController = Get.put(NotificationController());

  static String routeName = "/latters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeHeader(),
                    SizedBox(height: 10,),
                Obx(() =>
                !notificationController.loading.value?
                    Container(
                  width:double.infinity,
                  height: getProportionateScreenHeight(640),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: notificationController.notificationlist.length,
                      itemBuilder: (context, index) {
                     return
                           Container(
                             width: getProportionateScreenWidth(345),
                             height: getProportionateScreenHeight(110),
                             margin: EdgeInsets.symmetric(
                               horizontal: getProportionateScreenWidth(10),
                               vertical: getProportionateScreenWidth(5),),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey.withOpacity(0.3), //color of shadow
                                   spreadRadius: 2, //spread radius
                                   blurRadius: 6, // blur radius
                                   offset: const Offset(0, 1), // changes position of shadow
                                 ),
                                 //you can set more BoxShadow() here
                               ],
                             ),
                             child: Padding(
                                 padding: EdgeInsets.symmetric(
                                     horizontal: MediaQuery.of(context).size.width * .05,
                                     vertical: MediaQuery.of(context).size.height * .02),
                                 child: Row(
                                   children: [
                                     Expanded(
                                       flex: 2,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             children: [
                                               Expanded(
                                                   child: Text(notificationController.notificationlist[index].message,
                                                       style: TextStyle(
                                                           fontSize: 15,
                                                           fontWeight: FontWeight.bold
                                                       )))
                                             ],
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             children: [
                                               Expanded(
                                                   child:
                                                   Text(notificationController.notificationlist[index].notification_title,
                                                       style: TextStyle(
                                                         fontSize: 14,
                                                       ))
                                               ),
                                               SizedBox(
                                                   width:
                                                   MediaQuery.of(context).size.width *
                                                       .02),
                                             ],
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.end,
                                             children: [
                                               Text(notificationController.notificationlist[index].date_time,
                                                   style: TextStyle(
                                                       fontSize: 12
                                                   ))
                                               ,
                                             ],
                                           )
                                         ],
                                       ),
                                     ),
                                   ],
                                 )),
                           );
                    }
          ),
                )
                    :Container(
                  margin: EdgeInsets.symmetric(vertical: 300),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: kPrimaryColor,
                    ),
                  ),
                ))
                  ],
                ),
              )),
        ),
      ),
    );
  }

}
