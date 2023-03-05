import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../components/constants.dart';
import '../../components/default_button.dart';
import 'components/home_header.dart';

class Fees_Screen extends StatelessWidget {
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
              Column(
                children: [
                  SizedBox(height: 30,),
                  FeesItems(feeds: 'نرجوا دفع القسط الاول للطالبة سمية'),
                  FeesItems(feeds: 'نرجوا دفع القسط الثاني للطالبة سمية'),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
  Widget FeesItems({feeds}){
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: 270,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 9,
                    offset: const Offset(2, 2)),
              ],
            ),
            child:Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  width: 250,
                  height: 100,
                  child: SvgPicture.asset(
                    "assets/icons/true.svg",
                  ),
                ),
                SizedBox(height: 20,),
                Text('عزيزي ولئ امر الطالب',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                Text('$feeds',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 15,
                  ),),
                SizedBox(height: 20,),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: DefaultButton(
                    text: "الموافقة على الاشعار",
                    press: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
