import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:photo_view/photo_view.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../Details/Details_Viwe.dart';
import 'components/home_header.dart';

class Results_Details_Screen extends StatelessWidget {
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
              Container(
                width:double.infinity,
                height: getProportionateScreenHeight(680),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 13,
                    itemBuilder: (context, index) {
                      return
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Itams(context),
                        );
                    }
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
  Widget Itams(context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.02 ,),
      padding: EdgeInsets.only( top: MediaQuery.of(context).size.width*.03),
      height: MediaQuery.of(context).size.width*.40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('نتائج',
              style: TextStyle(
                color: kPrimaryColor,
              ),),
              Text('2023-3-12',
              style: TextStyle(
                color: kTextColor,
              ),),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.width*.04 ,),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Get.to(Details_Viwe('assets/images/Results.jpg'));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black,width: 1),
                  image:DecorationImage(
                      image: AssetImage("assets/images/Results.jpg"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(5, 5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
