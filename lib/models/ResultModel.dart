import 'dart:convert';
import 'dart:typed_data';

ResultModel ResultModelFromJson(str) => ResultModel.fromJson(str);

String ResultModelFromJsonToJson(ResultModel data) => json.encode(data.toJson());

class ResultModel {
  ResultModel(
      {this.idD,
        this.degreeImg,
        this.classId,
        this.levelId,
        this.dateUpload,
        this.nameClass,
        this.nameLevel});

  String? idD;
  String? degreeImg;
  String? classId;
  String? levelId;
  String? dateUpload;
  String? nameClass;
  String? nameLevel;


  factory ResultModel.fromJson(Map<String, dynamic> json)=>ResultModel(
    idD : json['id_d'],
    degreeImg : json["degree_img"],
     //   json["degree_img"] != null ? base64Decode(json["degree_img"]) : null,
    classId : json['class_id'],
    levelId : json['level_id'],
    dateUpload : json['date_upload'],
    nameClass : json['name_class'],
    nameLevel : json['name_level'],
  );

  Map<String, dynamic> toJson() =>{
    "id_d": idD,
    "degree_img": degreeImg,
    "class_id": classId,
    "level_id": levelId,
    "date_upload":dateUpload,
    "name_class": nameClass,
    "name_level": nameLevel,
  };


  static List<ResultModel> fromJsonList(List<dynamic> json) {
    List<ResultModel> list = [];
    for (var element in json) {
      list.add(ResultModelFromJson(element));
    }
    return list;
  }
}

