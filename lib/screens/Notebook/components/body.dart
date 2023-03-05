import 'package:flutter/material.dart';
import '../../../components/size_config.dart';
import '../../home/components/home_header.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(50)),
          ],
        ),
      ),
    );
  }
}
