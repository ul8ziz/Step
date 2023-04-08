import 'dart:core';
import 'package:get/get.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../components/GetStorage.dart';
import '../models/UserInfoModel.dart';

class UserInfoController extends GetxController {
  late UserInfoModel UserInfoControllerlist;

  RxBool loading = false.obs;
  var error = false.obs;
  var UserInfoFun = "auth_api/login.php";

  getUserInfo({
    required UserName,
    required password
      }) async {
          loading.value = true;
          try {
            var data = await getDate(
                url: UserInfoFun,
                method: HttpMethod.post,
                body: {
                    "phone" : "$UserName",
                    "password":"$password"
                }
            );
           if (data.isNotEmpty) {
              UserInfoControllerlist = UserInfoModel.fromJson(data);
              loading.value = false;
              writeGetStorage(userInfoname, UserInfoControllerlist.data?.nameStd);
              writeGetStorage(userInfoKeyfather_phone, UserInfoControllerlist.data?.fatherPhone);
              writeGetStorage(userInfoid, UserInfoControllerlist.data?.idStd);
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
