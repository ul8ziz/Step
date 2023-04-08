import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:photo_view/photo_view.dart';
import '../../Controllers/ResultController.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import 'components/home_header.dart';

class Details_Viwe extends StatelessWidget {
  final String photo;
  Details_Viwe( this.photo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            child: PhotoView(
              imageProvider: NetworkImage(photo),
            ),
         ),
      ),
    );
  }
}
