import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../BottomNavBar.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../components/GetStorage.dart';
import '../components/constants.dart';
import '../models/NotificationModel.dart';

class NotificationController extends GetxController {

  List<NotificationModel> notificationlist = <NotificationModel>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNotifications();
  }
  RxBool loading = false.obs;
  var error = false.obs;
  var notificationFun = "notif_model/notifications.php";

  getNotifications() async {
          loading.value = true;
          try {
            dynamic data = await getDate(
                url: notificationFun,
                method: HttpMethod.post,
                body: {}
            );
            if (data.isNotEmpty) {
              notificationlist = NotificationModel.fromJsonList(data);
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
