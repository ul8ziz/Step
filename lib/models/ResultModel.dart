
class ResultModel {
  bool? status;
  String? message;
  //Data? data;
  List<Data>? data;

  ResultModel({this.status, this.message, this.data});

  ResultModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    //data = json['data'] != null ? Data.fromJson(json['data']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
  }
}
}

class Data {
  String? idD;
  String? degreeImg;
  String? imgName;
  String? classId;
  String? levelId;
  String? dateUpload;
  String? nameClass;
  String? nameLevel;

  Data.fromJson(Map<String, dynamic> json) {
    idD = json['id_d'];
    degreeImg = json['degree_img'];
    imgName = json['img_name'];
    classId = json['class_id'];
    levelId = json['level_id'];
    dateUpload = json['date_upload'];
    nameClass = json['name_class'];
    nameLevel = json['name_level'];
  }
}
