import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Controllers/ResultController.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../Details/Details_Screen.dart';
import 'Results_Details_Screen.dart';
import '../../components/home_header.dart';

class Results_Screen extends StatelessWidget {
  final ResultController controller = Get.put(ResultController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeHeader(title: 'النتائج',),
                  SizedBox(height: 30,),
                  Itams1(context),
                  SizedBox(height: 30,),
                  Itams2(context),
                  SizedBox(height: 30,),
                  Itams3(context),                ],
              ),
            )),
      ),
    );
  }
  Widget Itams2(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('نتائج المرحلة الاعدادية',
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
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute (
                              builder: (context) =>
                                  Results_Details_Screen('1','7')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','7')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','7'))
                      );
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثامن",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute (
                              builder: (context) =>
                                  Results_Details_Screen('1','8')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','8')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','8')));
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف التاسع",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute (
                              builder: (context) =>
                                  Results_Details_Screen('1','9')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','9')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','9')));
                    });},
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Itams1(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(' نتائج المرحلة الثانوية',
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
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Results_Details_Screen('1','10')                        ));
                  });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','10')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','10')                        ));
                    });},

                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثاني ثانوي",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','11')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','11')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','11')
                          ));
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثالث ثانوي",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','12')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','12')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','12')
                          ));
                    });},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Itams3(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(' نتائج المرحلة الاساسية',
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
                  press1: () {
                     WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute (
                              builder: (context) =>
                                Results_Details_Screen('1','1')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','1')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','1')                        ));
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثاني",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','2')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','2')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','2')                        ));
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الثالث",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','3')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','3')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','3')                        ));
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الرابع",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','4')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','4')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','4')                        ));
                    });},
                               ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف الخامس",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','5')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','5')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','5')                        ));
                    });},
                ),
                SpecialOfferCard(
                  image: "assets/images/logo.png",
                  category: "الصف السادس",
                  numOfBrands: '',
                  press1: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('1','6')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('2','6')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Results_Details_Screen('3','6')                        ));
                    });},
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        ],
      ),
    );}
}
class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press1,
    required this.press2,
    required this.press3,
  }) : super(key: key);

  final String category, image;
  final String numOfBrands;
  final GestureTapCallback press1;
  final GestureTapCallback press2;
  final GestureTapCallback press3;
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
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
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
                        PopupMenuItem(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: MediaQuery.of(context).size.height * .06,
                          value: "2",
                          onTap: press3,
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
