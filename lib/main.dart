import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:Step/theme.dart';
import 'package:get_storage/get_storage.dart';
import 'Global/transaltion.dart';
import 'Splash.dart';
var language;
void main() async {
  await GetStorage.init();
  runApp(MyApp());
  getLanguage();
  await const FlutterSecureStorage().read(key: keyLanguage).then((value) {
    if (value.toString() != "null") {
      language = value;
    }
  });
  await GetStorage.init();
}
enum MenuState { home, notification, profile }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Step',
      theme: theme(),
      home:Splash(),
      translations: Translation(),
      locale: language.toString() != "null"
          ? Locale('$language')
          : const Locale('ar'),
      fallbackLocale: const Locale('ar'),
    );
  }
}
