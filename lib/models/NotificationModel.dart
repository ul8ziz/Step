import 'dart:convert';

NotificationModel NotificationModelFromJson(str) => NotificationModel.fromJson(str);

String NotificationModelFromJsonToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  NotificationModel(
      {
        required this.message,
        required this.date_time,
        required this.notification_title
      });

  String message;
  String date_time;
  String notification_title;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
      message: json["message"],
      date_time: json["date_time"],
      notification_title: json["notification_title"]
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "date_time": date_time,
    "notification_title": notification_title,
  };

  static List<NotificationModel> fromJsonList(List<dynamic> json) {
    List<NotificationModel> list = [];
    for (var element in json) {
      list.add(NotificationModelFromJson(element));
    }
    return list;
  }
}
