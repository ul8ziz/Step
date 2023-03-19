import 'dart:convert';

UserInfoModel UserInfoModelFromJson(str) => UserInfoModel.fromJson(str);

String UserInfoModelFromJsonToJson(UserInfoModel data) => json.encode(data.toJson());

class UserInfoModel {
  bool? loginStatus;
  String? message;
  Data? data;

  UserInfoModel({this.loginStatus, this.message, this.data});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    loginStatus = json['loginStatus'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loginStatus'] = this.loginStatus;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
  static List<UserInfoModel> fromJsonList(List<dynamic> json) {
    List<UserInfoModel> list = [];
    for (var element in json) {
      list.add(UserInfoModelFromJson(element));
    }
    return list;
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

  Data(
      {this.idSt,
        this.idStd,
        this.password,
        this.classId,
        this.levelId,
        this.dateRegister,
        this.nameClass,
        this.nameLevel,
        this.nameStd,
        this.fatherPhone});

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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_st'] = this.idSt;
    data['id_std'] = this.idStd;
    data['password'] = this.password;
    data['class_id'] = this.classId;
    data['level_id'] = this.levelId;
    data['date_register'] = this.dateRegister;
    data['name_class'] = this.nameClass;
    data['name_level'] = this.nameLevel;
    data['name_std'] = this.nameStd;
    data['father_phone'] = this.fatherPhone;
    return data;
  }



}
