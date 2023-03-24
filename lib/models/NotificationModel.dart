import 'dart:convert';

NotificationModel NotificationModelFromJson(str) => NotificationModel.fromJson(str);

String NotificationModelFromJsonToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  NotificationModel(
      {
        required this.message,
        required this.date_time
      });

  String message;
  String date_time;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
      message: json["message"],
      date_time: json["date_time"]
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "date_time": date_time,
  };

  static List<NotificationModel> fromJsonList(List<dynamic> json) {
    List<NotificationModel> list = [];
    for (var element in json) {
      list.add(NotificationModelFromJson(element));
    }
    return list;
  }
}
