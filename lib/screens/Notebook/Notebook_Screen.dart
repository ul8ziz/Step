import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../Details/Details_Screen.dart';
import 'components/home_header.dart';

class Notebook_Screen extends StatelessWidget {
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
                  Itams1(
                      press1: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Details_Screen(),
                              ));
                        });
                      },
                      press2: () {WidgetsBinding.instance.addPostFrameCallback((_) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Details_Screen(),
                            ));
                      });}
                  ),
                  SizedBox(height: 30,),
                  Itams2(
                      press1: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Details_Screen(),
                              ));
                        });
                      },
                      press2: () {WidgetsBinding.instance.addPostFrameCallback((_) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Details_Screen(),
                            ));
                      });}
                  ),
                  SizedBox(height: 30,),
                  Itams3(
                      press1: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Details_Screen(),
                              ));
                        });
                      },
                      press2: () {WidgetsBinding.instance.addPostFrameCallback((_) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Details_Screen(),
                            ));
                      });}
                  ),                ],
              )
            ],
          ),
        )),
      ),
    );
  }
  Widget Itams2({press1,press2}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('دفتر متابعة المرحلة الاعدادية',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )
              ),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف السابع",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثامن",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف التاسع",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Itams3({press1,press2}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('دفتر متابعة المرحلة الاساسية',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الاول",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثاني",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثالث",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الرابع",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الخامس",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف السادس",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),

                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        ],
      ),
    );}
  Widget Itams1({press1,press2}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('دفتر متابعة المرحلة الثانوية',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الاول ثانوي",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثاني ثانوي",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثالث ثانوي",
                  numOfBrands: '',
                  press1: press1,
                  press2: press2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press1,
    required this.press2,
  }) : super(key: key);

  final String category, image;
  final String numOfBrands;
  final GestureTapCallback press1;
  final GestureTapCallback press2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        child: SizedBox(
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.10),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(35.0),
                    vertical: getProportionateScreenWidth(30),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands")
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PopupMenuButton(
                      position: PopupMenuPosition.under,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: MediaQuery.of(context).size.height * .03,
                          value: "1",
                          onTap: press1,
                          child: Text(
                            textAlign: TextAlign.center,
                            "الشعبه أ".tr,
                            style: TextStyle(
                              fontSize: 12,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: MediaQuery.of(context).size.height * .06,
                          value: "2",
                          onTap: press2,
                          child: Text(
                            "الشعبة ب".tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: kPrimaryColor),
                          ),
                        ),
                      ],
                      child: SizedBox(
                        height: 30,
                        width: 40,
                        child: Icon(Icons.dehaze,
                          color: Colors.white,)
                       // SvgPicture.asset('assets/icons/dots.svg', color: Colors.red,),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
