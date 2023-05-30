import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../../main.dart';
import 'components/body.dart';
import 'components/home_header.dart';

class Team_screen extends StatelessWidget {
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
              SizedBox(height: 50,),
              Container(
                width: 600,
                height: 600,
                child: Image.asset("assets/icons/taaaam.png",)),
            ],
          ),
        )),
      ),
    );
  }

}
