class LoginModel {
  int? statusCode;
  Data? data;
  String? message;

  LoginModel({this.statusCode, this.data, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
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

class Data {
  int? userCode;
  String? userName;
  String? password;
  int? sessionCode;
  String? token;
  String? mindCubeKey;

  Data(
      {this.userCode,
      this.userName,
      this.password,
      this.sessionCode,
      this.token,
      this.mindCubeKey});

  Data.fromJson(Map<String, dynamic> json) {
    userCode = json['UserCode'];
    userName = json['user_name'];
    password = json['Password'];
    sessionCode = json['SessionCode'];
    token = json['Token'];
    mindCubeKey = json['MindCubeKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserCode'] = this.userCode;
    data['user_name'] = this.userName;
    data['Password'] = this.password;
    data['SessionCode'] = this.sessionCode;
    data['Token'] = this.token;
    data['MindCubeKey'] = this.mindCubeKey;
    return data;
  }
}
