import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../BottomNavBar.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../components/GetStorage.dart';
import '../components/constants.dart';
import '../models/NotificationModel.dart';
import '../models/ResultModel.dart';
import '../models/UserInfoModel.dart';

class ResultController extends GetxController {

  List<ResultModel> ResultControllerlist = <ResultModel>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getResul();
  }
  RxBool loading = false.obs;
  var error = false.obs;
  var degreeFun = "degree_api/result.php";

  getResul() async {
          loading.value = true;
          try {
            var data = await getDate(
                url: degreeFun,
                method: HttpMethod.post,
                body: {
              "class":"2",
              "level":"4"
                }
                );
            if (data.isNotEmpty) {
              ResultControllerlist = ResultModel.fromJsonList(data);
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
