class SignupModel {
  String? message;
  Response? response;

  SignupModel({this.message, this.response});

  SignupModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }
}

class Response {
  String? email;
  String? password;
  String? dob;
  String? createdat;
  String? username;
  String? sId;
  int? iV;

  Response(
      {this.email,
        this.password,
        this.dob,
        this.createdat,
        this.username,
        this.sId,
        this.iV});

  Response.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    dob = json['dob'];
    createdat = json['createdat'];
    username = json['username'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['dob'] = this.dob;
    data['createdat'] = this.createdat;
    data['username'] = this.username;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}