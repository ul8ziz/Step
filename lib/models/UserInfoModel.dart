class UserInfoModel {
  bool? loginStatus;
  String? message;
  Data? data;

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    loginStatus = json['loginStatus'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    }
  }


class Data {
  String? idSt;
  String? idStd;
  String? password;
  String? classId;
  String? levelId;
  String? dateRegister;
  String? nameClass;
  String? nameLevel;
  String? nameStd;
  String? fatherPhone;

  Data.fromJson(Map<String, dynamic> json) {
    idSt = json['id_st'];
    idStd = json['id_std'];
    password = json['password'];
    classId = json['class_id'];
    levelId = json['level_id'];
    dateRegister = json['date_register'];
    nameClass = json['name_class'];
    nameLevel = json['name_level'];
    nameStd = json['name_std'];
    fatherPhone = json['father_phone'];
  }
}
