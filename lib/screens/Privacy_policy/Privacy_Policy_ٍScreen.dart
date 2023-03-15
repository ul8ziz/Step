import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/constants.dart';
import '../../components/default_button.dart';
import '../../components/size_config.dart';
import '../../main.dart';
import 'components/body.dart';
import 'components/home_header.dart';

class Privacy_policy_Screen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 50,),
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 900,
                    child: Text(

                      """
            نريدك أن تميّز بين أنواع المعلومات التي نجمعها أثناء استخدامك لخدماتنا.

نحن نجمع المعلومات لتقديم خدمات ذات مستوى أفضل لمستخدمينا جميعًا - بدءًا من تحديد الأمور الأساسية، مثل اللغة التي تتحدثها إلى أمور أكثر تعقيدًا ومنها على سبيل المثال الإعلانات التي ستجدها أكثر فائدة، أو الأشخاص الذين يهمك أمرهم بشدة على الإنترنت، أو الفيديوهات التي قد تعجبك على YouTube. وإن المعلومات التي تجمعها Google وكيفية استخدامها تعتمد على كيفية استخدامك لخدماتنا وكيفية إدارتك لعناصر التحكم في الخصوصية.

عند عدم تسجيل الدخول إلى حساب على Google، نخزّن المعلومات التي نجمعها باستخدام معرِّفات فريدة مرتبطة بالمتصفّح أو التطبيق أو الجهاز المستخدَم. وهذا يساعدنا في تنفيذ إجراءات مثل حفظ إعداداتك المفضّلة في مختلف جلسات التصفح. ومن الأمثلة على تلك الإعدادات لغتك المفضّلة أو ما إذا كان المطلوب عرض إعلانات أو نتائج بحث أكثر صلة استنادًا إلى نشاطك.

عندما تسجل الدخول، نجمع أيضًا معلومات ونخزّنها لدى حسابك على Google، حيث نتعامل مع هذه المعلومات على أنها معلومات شخصية.""",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                  ),
                  SizedBox(height: 50,),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: DefaultButton(
                      text: "رجوع",
                      press: () {

                        Get.back();

                      },
                    ),
                  ),
                  SizedBox(height: 50,),
                ],
              )

            ],
          ),
        )),
      ),
    );
  }

}
