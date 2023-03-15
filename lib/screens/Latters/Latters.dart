import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../../main.dart';
import '../Latters/components/home_header.dart';

class Latters extends StatelessWidget {
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
                    Container(
                  width:double.infinity,
                  height: getProportionateScreenHeight(640),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 13,
                      itemBuilder: (context, index) {
                     return  Container(
                        width: getProportionateScreenWidth(345),
                        height: getProportionateScreenHeight(100),
                        margin: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenWidth(5),),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), //color of shadow
                              spreadRadius: 2, //spread radius
                              blurRadius: 6, // blur radius
                              offset: const Offset(0, 5), // changes position of shadow
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
                                              child: Text('تم اعلان النتائج لصف السادس',
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
                                              child: Text('يمكنكم مراجعة النتائج من خلال شاشة اشعارة النتائج',
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
                                          Text('9:04 PM',
                                            style: TextStyle(
                                            fontSize: 12
                                          ),)
                                          ,
                                          SizedBox(width: MediaQuery.of(context).size.width * .01,),
                                          Text('22.5.2022',
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
                  ],
                ),
              )),
        ),
      ),
    );
  }

}
