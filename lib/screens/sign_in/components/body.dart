import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/constants.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/size_config.dart';
import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends  State<Body> {

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
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
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
المدرسة تتشرف في انضمامكم                        """,
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
                  DefaultButton(
                    text: "تسجيل الدخول",
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save(); // if all are valid then go to success screen
                        KeyboardUtil.hideKeyboard(context);
                        Get.offAll( HomeScreen());
                      }
                    },
                  ),
                ],
              ),
            ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
              /*  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 6) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 6) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "كلمة السر",
        hintText: "ادخل كلمة السر",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 14),
          child: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
        ),
      ),
    );
  }
  TextFormField buildEmailFormField() {
    return TextFormField(
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