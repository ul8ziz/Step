import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:Step/theme.dart';
import 'package:get_storage/get_storage.dart';
import 'Splash.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}
enum MenuState { home, notification, profile }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Step',
      theme: theme(),
      home:Splash() ,
    );
  }
}
