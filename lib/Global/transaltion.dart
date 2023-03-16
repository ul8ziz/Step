import 'dart:ui';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import '../main.dart';
import 'lang/ar.dart';
import 'lang/en.dart';
var keyLanguage = "language";

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}

getLanguage() async {
  await const FlutterSecureStorage().read(key: keyLanguage).then((value) {
    if (value.toString() != "null") {
      language = value;
    }
  });
  print('language  $language');
  if (language.toString() == "null") {
    if (Get.deviceLocale.toString().substring(0, 2) == "ar") {
      language = 'ar';
      await const FlutterSecureStorage().write(key: keyLanguage, value: "ar");
      Get.updateLocale(const Locale("ar"));
    } else {
      language = 'en';
      await const FlutterSecureStorage().write(key: keyLanguage, value: "en");
      Get.updateLocale(const Locale("en"));
    }
  }
}


class languageController extends GetxController {
  var imageProfileBase64;
  @override
  void onInit() {
    getLanguage();
    // TODO: implement onInit
    super.onInit();
  }

  changeLanguageEnglish() async {
    print('changeLanguageEnglish $language');
    if (language.toString() == "ar") {
      await const FlutterSecureStorage().write(key: keyLanguage, value: "en");
      Get.updateLocale(const Locale("en"));
      getLanguage();
    }
  }

  changeLanguageArabic() async {
    print('changeLanguageArabic $language');
    if (language.toString() == "en") {
      await const FlutterSecureStorage().write(key: keyLanguage, value: "ar");
      Get.updateLocale(
        const Locale("ar"),
      );
      getLanguage();
    }
  }
}
