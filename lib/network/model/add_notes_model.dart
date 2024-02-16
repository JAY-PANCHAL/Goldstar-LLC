class AddNotesModel {
  int? statusCode;
  AddNotesData? data;
  String? message;

  AddNotesModel({this.statusCode, this.data, this.message});

  AddNotesModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    data =
        json['Data'] != null ? new AddNotesData.fromJson(json['Data']) : null;
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StatusCode'] = this.statusCode;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['Message'] = this.message;
    return data;
  }
}

class AddNotesData {
  List<String>? data;

  AddNotesData({this.data});

  AddNotesData.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = <String>[];
      json['Data'].forEach((v) {
        // data!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      // data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
