import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/GetStorage.dart';
import '../../../components/constants.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../Controllers/LoginController.dart';
import '../../../components/size_config.dart';
import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends  State<Body> {
  final LoginController controller = Get.put(LoginController());
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }
  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.09),
                  Text(
                    "مرحباً",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    """بك عزيزي  ولئ امر الطالب إدارة  
المدرسة تتشرف في انضمامكم لنا                       """,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Form(
                key: _formKey,
                child: Column(
                  children: [
                    buildEmailFormField(),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    buildPasswordFormField(),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Row(
                      children: [
                        Checkbox(
                          value: remember,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            setState(() {
                              remember = value;
                            });
                          },
                        ),
                        Text("تذكر تسجيل الدخول."),
                        Spacer(),
                        /*  GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )*/
                      ],
                    ),
                    FormError(errors: errors),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Obx(() =>
                    !controller.loading.value?
                      DefaultButton(
                      text: "تسجيل الدخول",
                      press: () async{
                         if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save(); // if all are valid then go to success screen
                          KeyboardUtil.hideKeyboard(context);
                      await  controller.login(
                              UserName: usercontroller.text.trim(),
                              password: passwordcontroller.text.trim());
                        }
                      },
                    ):widgetButtonProgress(
                    context,
                    width: MediaQuery.of(context).size.width,
                    )

                  ),
                  ],
                ),
              ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Container buildPasswordFormField() {
    return Container(
      child: TextFormField(
        controller: passwordcontroller,
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.length >= 1) {
            removeError(error: kShortPassError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if (value.length < 1) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "كلمة السر",
          hintText: "ادخل كلمة السر",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon:Icon(Icons.lock_open),
          /*Padding(
            padding: EdgeInsets.only(left: 14),
            child: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
          ),*/
        ),
      ),
    );
  }
  Container buildEmailFormField() {
    return Container(
      child: TextFormField(
        controller: usercontroller,
        keyboardType: TextInputType.number,
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kEmailNullError);
          } else if (emailValidatorRegExp.hasMatch(value)) {
            removeError(error: kInvalidEmailError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kEmailNullError);
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value)) {
            addError(error: kInvalidEmailError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "رقم الجوال",
          hintText: "ادخل رقم الجوال",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.phone_android),
        ),
      ),
    );
  }
}


class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}