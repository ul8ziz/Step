import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../BottomNavBar.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../components/GetStorage.dart';
import '../components/constants.dart';
import '../models/FeesModel.dart';
import '../models/NotificationModel.dart';
import '../models/ResultModel.dart';
import '../models/UserInfoModel.dart';

class FeesController extends GetxController {

  List<FeesModel> Feeslist = <FeesModel>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFees();
  }
  RxBool loading = false.obs;
  var error = false.obs;
  var degreeFun = "fees_api/fees.php";

  getFees() async {
          loading.value = true;
          try {
            var data = await getDate(
                url: degreeFun,
                method: HttpMethod.post,
                body: {
                  "student":2
                }
                );
            if (data.isNotEmpty) {
              Feeslist = FeesModel.fromJsonList(data);
              loading.value = false;
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
