import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../BottomNavBar.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../components/GetStorage.dart';
import '../components/constants.dart';

class LoginController extends GetxController {
  RxBool loading = false.obs;

  var error = false.obs;
  final loginFun = "auth_api/login.php";

  login({required UserName, required password})
        async {
          loading.value = true;
          try {
            var data = await getDate(url: loginFun, method: HttpMethod.post, body: {
                "phone":"$UserName",
                "password":"$password"
              }
            );
            if (data['message'].toString().contains('بيانات دخول خاطئة') ) {
              loading.value = false;
              Get.snackbar('', "",
                  titleText: Text(''),
                  messageText:Text(
                    "${data['message']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  colorText: Colors.white,
                  backgroundColor: Colors.red,
                  margin: const EdgeInsets.all(30),
                  forwardAnimationCurve: Curves.fastLinearToSlowEaseIn);
            }
            else {
              loading.value = false;
              Get.offAll( BottomNavBar());
              writeGetStorage(isShowLoginPage,true);
              Get.snackbar(
              '','',
                  titleText: Text(''),
                  messageText:Text(
                      "تم تسجل الدخول بنجاح",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                    backgroundColor: kPrimaryColor,
                    margin: const EdgeInsets.all(30),
                    forwardAnimationCurve: Curves.fastLinearToSlowEaseIn);
            }
          } catch (e) {
            loading.value = false;
            error = true.obs;
            print('Error:   $e');
          }
        }

}
