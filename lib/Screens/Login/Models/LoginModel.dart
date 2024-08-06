class LoginModel {
  String? message;
  Data? data;
  String? token;

  LoginModel({this.message, this.data, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Data {
  String? sId;
  String? email;
  String? password;
  String? dob;
  String? createdat;
  String? username;
  int? iV;

  Data(
      {this.sId,
        this.email,
        this.password,
        this.dob,
        this.createdat,
        this.username,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    password = json['password'];
    dob = json['dob'];
    createdat = json['createdat'];
    username = json['username'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['password'] = this.password;
    data['dob'] = this.dob;
    data['createdat'] = this.createdat;
    data['username'] = this.username;
    data['__v'] = this.iV;
    return data;
  }
}