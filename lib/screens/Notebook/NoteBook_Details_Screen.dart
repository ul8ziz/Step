import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/ResultController.dart';
import '../../Controllers/noteBook_Controller.dart';
import '../../components/constants.dart';
import '../../components/size_config.dart';
import '../Details/Details_Viwe.dart';
import '../../components/home_header.dart';

class NoteBook_Details_Screen extends StatelessWidget {
  final noteBook_Controller controller = Get.put(noteBook_Controller());
  final String class_id;
  final String level_id;

  NoteBook_Details_Screen(this.level_id, this.class_id);

  @override
  void initState()async {
    await controller.getnoteBook(class_id: class_id, level_id: level_id);
  }


  @override
  Widget build(BuildContext context) {
    controller.getnoteBook(class_id: class_id, level_id: level_id);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(title: 'دفتر المتابعة',),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() =>
                  controller.isEmpty.value?
                  Container(
                      margin: EdgeInsets.only(top:300 ),
                      child: Center(child: Text('لا يوجد بيانات'))
                  ):
              !controller.loading.value?
                  Container(
                    width:double.infinity,
                    height: getProportionateScreenHeight(680),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: controller.noteBookControllerlist.length,
                        itemBuilder: (context, index) {
                          return
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Itams(context,
                                  imge:!controller.isEmpty.value?  getImge(uplodeUrl: '${controller.noteBookControllerlist[index].hw_img.toString()}')
                                      :'https://png.pngtree.com/png-vector/20200616/ourlarge/pngtree-cartoon-style-wooden-multi-directional-guidance-sign-png-image_2257074.jpg',
                                  date_upload: controller.noteBookControllerlist[index].date_hw.toString()??'لم يتم التعيين',
                                  class_: !controller.isEmpty.value? '${controller.noteBookControllerlist[index].name_class } ${controller.noteBookControllerlist[index].name_level}':'لم يتم التعيين'),
                            );
                        }
                    )):Center(
                 child: CircularProgressIndicator(
                   color: kPrimaryColor,),),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
  Container Itams(context,{required imge,required date_upload,required class_}){
    return Container(
      margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.02 ,),
      padding: EdgeInsets.only( top: MediaQuery.of(context).size.width*.03),
      height: MediaQuery.of(context).size.width*.40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('دفتر المتابعة '+'$class_',
              style: TextStyle(
                color: kPrimaryColor,
              ),),
              Text('$date_upload',
              style: TextStyle(
                color: kTextColor,
              ),),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.width*.04 ,),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Get.to(Details_Viwe('$imge'));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black,width: 1),
                  image:DecorationImage(
                      image: NetworkImage("$imge"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(5, 5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
