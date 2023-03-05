import 'package:flutter/material.dart';
import 'package:Step/components/coustom_bottom_nav_bar.dart';
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
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeHeader(),
                ],
              ),
            )),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.notification),
    );
  }

}
