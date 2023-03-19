import 'dart:convert';

FeesModel FeesModelFromJson(str) => FeesModel.fromJson(str);

String FeesModelFromJsonToJson(FeesModel data) => json.encode(data.toJson());

class FeesModel {

  String? fzId;
  String? stdId;
  String? amount;
  String? note;
  String? dateFz;
  String? nameStd;

  FeesModel(
      {this.fzId,
        this.stdId,
        this.amount,
        this.note,
        this.dateFz,
        this.nameStd});

  FeesModel.fromJson(Map<String, dynamic> json) {
    fzId = json['fz_id'];
    stdId = json['std_id'];
    amount = json['amount'];
    note = json['note'];
    dateFz = json['date_fz'];
    nameStd = json['name_std'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fz_id'] = this.fzId;
    data['std_id'] = this.stdId;
    data['amount'] = this.amount;
    data['note'] = this.note;
    data['date_fz'] = this.dateFz;
    data['name_std'] = this.nameStd;
    return data;
  }


  static List<FeesModel> fromJsonList(List<dynamic> json) {
    List<FeesModel> list = [];
    for (var element in json) {
      list.add(FeesModelFromJson(element));
    }
    return list;
  }
}



