import 'package:flutter/material.dart';
import 'package:Step/components/coustom_bottom_nav_bar.dart';

import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../../main.dart';
import 'components/body.dart';
import 'components/home_header.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFEECDF),
        centerTitle: true,
        title: Text('الرئيسية',
        style: TextStyle(
          color: kPrimaryColor,
        ),),
        leading: SizedBox(),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 50,),

            Container(
              height: 150,
              width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                )
            ),
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
                      items(),
                      items(),
                      items(),
                      items(),
                    ],
                  )),
            ),
          ],
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

  Widget items(){
    return  Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F6F9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.nature_people_sharp,size: 50,),
          Text('data',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),)
        ],
      ),
    );
  }
}
