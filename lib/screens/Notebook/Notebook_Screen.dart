import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/ResultController.dart';
import '../../components/constants.dart';
import '../../components/home_header.dart';
import '../../components/size_config.dart';
import '../Results/Results_Screen.dart';
import 'NoteBook_Details_Screen.dart';

class Notebook_Screen extends StatelessWidget {
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
                HomeHeader(title: 'دفترة المتابعة',),
                SizedBox(height: 30,),
                Itams1(context),
                SizedBox(height: 30,),
                Itams2(context),
                SizedBox(height: 30,),
                Itams3(context),                ],
            ),
          )),)
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
              Text('دفترة المتابعة المرحلة الاعدادية',
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
                                  NoteBook_Details_Screen('1','7')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','7')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','7'))
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
                                  NoteBook_Details_Screen('1','8')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','8')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','8')));
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
                                  NoteBook_Details_Screen('1','9')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','9')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','9')));
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
              Text(' دفترة المتابعة المرحلة الثانوية',
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
                                  NoteBook_Details_Screen('1','10')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','10')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','10')                        ));
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
                                  NoteBook_Details_Screen('1','11')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','11')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','11')
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
                                  NoteBook_Details_Screen('1','12')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','12')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','12')
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
              Text(' دفترة المتابعة المرحلة الاساسية',
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
                                  NoteBook_Details_Screen('1','1')
                          ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','1')
                          ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','1')                        ));
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
                                  NoteBook_Details_Screen('1','2')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','2')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','2')                        ));
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
                                  NoteBook_Details_Screen('1','3')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','3')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','3')                        ));
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
                                  NoteBook_Details_Screen('1','4')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','4')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','4')                        ));
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
                                  NoteBook_Details_Screen('1','5')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','5')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','5')                        ));
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
                                  NoteBook_Details_Screen('1','6')                        ));
                    });},
                  press2: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('2','6')                        ));
                    });},
                  press3: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NoteBook_Details_Screen('3','6')                        ));
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
