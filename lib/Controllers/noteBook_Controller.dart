import 'package:get/get.dart';
import '../Global/enumMethod.dart';
import '../global/queryModel.dart';
import '../models/ResultModel.dart';
import '../models/noteBookModel.dart';

class noteBook_Controller extends GetxController {
  //late noteBookModel noteBookControllerlist;
  List<noteBookModel> noteBookControllerlist = <noteBookModel>[].obs;

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    noteBookControllerlist.clear();
  }
  @override
  void dispose() {
    super.dispose();
    noteBookControllerlist.clear();
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  RxBool loading = false.obs;
  RxBool isEmpty = false.obs;
  var error = false.obs;
  var degreeFun = "home_work_api/showHW.php";

  getnoteBook({
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
            if (data=='') {
              isEmpty.value = true;
              print(' ========================');
            }else{
              if (data.isNotEmpty) {
                noteBookControllerlist.clear();
                print(' date NotEmpty');
                noteBookControllerlist = noteBookModel.fromJsonList(data);
                loading.value = false;
                isEmpty.value = false;
                print('+++++++++++++++++++++++++++++++++++++++++++++++++++');
              }
              else {
                print(' date isEmpty');
                loading.value = false;
                isEmpty.value = true;
              }
            }


          } catch (e) {
            loading.value = false;
            noteBookControllerlist.clear();
            error = true.obs;
            print('Error:   $e');
          }
        }

}
