import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../Controllers/FeesController.dart';
import '../../components/constants.dart';
import '../../components/default_button.dart';
import '../../components/size_config.dart';
import 'components/home_header.dart';

class Fees_Screen extends StatelessWidget {
  final FeesController feesController = Get.put(FeesController());

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
                  Obx(() =>
                  !feesController.loading.value?
                  Container(
                    width:double.infinity,
                    height: getProportionateScreenHeight(640),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: feesController.Feeslist.length,
                        itemBuilder: (context, index) {
                          return
                            FeesItems(feeds: feesController.Feeslist[index].amount,
                            name:feesController.Feeslist[index].nameStd,
                            data: feesController.Feeslist[index].dateFz);
                        }
                    ),
                  ):
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 300),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
  Widget FeesItems({feeds,name,data}){
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: 330,
            height: 290,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('عزيزي ولئ امر الطالب',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),Text('${name}',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('نرجوا دفع القسط المتبقي',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),),
                    Text(' ${feeds}',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                      ),),Text(' ريال ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' تاريخ الاشعار',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),),
                    Text(' ${data}',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 15,
                      ),),

                  ],
                ),
                SizedBox(height: 10,),
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
