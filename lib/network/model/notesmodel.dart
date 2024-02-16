class NotesModel {
  int? statusCode;
  NotesDataModel? data;
  String? message;

  NotesModel({this.statusCode, this.data, this.message});

  NotesModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    data =
        json['Data'] != null ? new NotesDataModel.fromJson(json['Data']) : null;
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

class NotesDataModel {
  List<NotesDetails>? data;

  NotesDataModel({this.data});

  NotesDataModel.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = <NotesDetails>[];
      json['Data'].forEach((v) {
        data!.add(new NotesDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NotesDetails {
  int? noteCode;
  int? llcAppStyleCode;
  int? custCode;
  bool? isLocked;
  int? insertSessionId;
  int? updateSessoinId;
  String? entryDate;
  String? title;
  String? description;

  NotesDetails(
      {this.noteCode,
      this.llcAppStyleCode,
      this.custCode,
      this.isLocked,
      this.insertSessionId,
      this.updateSessoinId,
      this.entryDate,
      this.title,
      this.description});

  NotesDetails.fromJson(Map<String, dynamic> json) {
    noteCode = json['note_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    custCode = json['cust_code'];
    isLocked = json['is_locked'];
    insertSessionId = json['insert_session_id'];
    updateSessoinId = json['update_sessoin_id'];
    entryDate = json['entry_date'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['note_code'] = this.noteCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['cust_code'] = this.custCode;
    data['is_locked'] = this.isLocked;
    data['insert_session_id'] = this.insertSessionId;
    data['update_sessoin_id'] = this.updateSessoinId;
    data['entry_date'] = this.entryDate;
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}
