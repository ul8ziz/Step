import 'package:flutter/material.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import 'components/home_header.dart';

class Details_Screen extends StatelessWidget {
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
                 // Obx(() =>
                 // !notificationController.loading.value?
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
                     /* :Container(
                    margin: EdgeInsets.symmetric(vertical: 300),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: kPrimaryColor,
                      ),
                    ),
                  )*/
      //)
                ],
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
              Text('الواجب',
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
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5),
                image:DecorationImage(
                    image: AssetImage("assets/images/Hw.jpg"),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
