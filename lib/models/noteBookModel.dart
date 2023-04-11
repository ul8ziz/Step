noteBookModel noteBookModelFromJson(str) => noteBookModel.fromJson(str);

class noteBookModel {
  String? hw_img;
  String? id_hw;
  String? tmp_img;
  String? note;
  String? id_class;
  String? id_level;
  String? date_hw;
  String? name_class;
  String? name_level;

  noteBookModel({
    this.hw_img,
    this.id_hw,
    this.tmp_img,
    this.note,
    this.id_class,
    this.id_level,
    this.date_hw,
    this.name_class,
    this.name_level,
  });

  noteBookModel.fromJson(Map<String, dynamic> json) {
    hw_img = json['hw_img'];
    id_hw = json['id_hw'];
    tmp_img = json['tmp_img'];
    note = json['note'];
    id_class = json['id_class'];
    id_level = json['id_level'];
    date_hw = json['date_hw'];
    name_class = json['name_class'];
    name_level = json['name_level'];

    }
  static List<noteBookModel> fromJsonList(List<dynamic> json) {
    List<noteBookModel> list = [];
    for (var element in json) {
      list.add(noteBookModelFromJson(element));
    }
    return list;
  }
}

