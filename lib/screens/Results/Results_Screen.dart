import 'package:flutter/material.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import 'components/home_header.dart';

class Results_Screen extends StatelessWidget {
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
                  Itams1(),
                  SizedBox(height: 30,),
                  Itams2(),
                  SizedBox(height: 30,),
                  Itams3(),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
  Widget Itams2(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('نتائج المرحلة الاعدادية',
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
                category: "الصف السابع",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الثامن",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف التاسع",
                numOfBrands: '',
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
  Widget Itams3(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('نتائج المرحلة الاساسية',
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
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الثاني",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الثالث",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الرابع",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الخامس",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف السادس",
                numOfBrands: '',
                press: () {},
              ),

              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
  Widget Itams1(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('نتائج المرحلة الثانوية',
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
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الثاني ثانوي",
                numOfBrands: '',
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/logo.png",
                category: "الصف الثالث ثانوي",
                numOfBrands: '',
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final String numOfBrands;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
