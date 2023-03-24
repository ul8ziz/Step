import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../BottomNavBar.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../components/GetStorage.dart';
import '../components/constants.dart';
import '../models/NotificationModel.dart';
import '../models/UserInfoModel.dart';

class UserInfoController extends GetxController {

  late UserInfoModel UserInfoControllerlist;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserInfo();
  }
  RxBool loading = false.obs;
  var error = false.obs;
  var UserInfoFun = "auth_api/login.php";

  getUserInfo() async {
          loading.value = true;
          try {
            var data = await getDate(
                url: UserInfoFun,
                method: HttpMethod.post,
                body: {
                    "phone" : "772171727",
                    "password":"123456"
                }
            );
           if (data.isNotEmpty) {
              UserInfoControllerlist = UserInfoModel.fromJson(data) ;
              loading.value = false;
           //  print('-------------${ data['data'][0]['name_std']}');
            } else {
              print('no date isEmpty');
              loading.value = false;
            }

          } catch (e) {
            loading.value = false;
            error = true.obs;
            print('Error:   $e');
          }
        }

}
