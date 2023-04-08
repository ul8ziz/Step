import 'package:get/get.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../models/ResultModel.dart';

class ResultController extends GetxController {
  late ResultModel ResultControllerlist;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  RxBool loading = false.obs;
  var error = false.obs;
  var degreeFun = "degree_api/show_degree.php";

  getResul({
    required class_id,
    required level_id}) async {
          loading.value = true;
          try {
            var data = await getDate(
                url: degreeFun,
                method: HttpMethod.post,
                body: {
                    "class_id":class_id,
                    "level_id":level_id
                });
            print('===================================================');
            print('${data['data']}');
            if (data.isNotEmpty) {
              ResultControllerlist = ResultModel.fromJson(data);
              loading.value = false;
             // print('+++++++++++++++++++++++++++++++++++++++++++++++++++');
             //print('${ResultControllerlist.data?[0].degreeImg}');
            }
            else {
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
