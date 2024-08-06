class HomeModel {
  String? message;
  List<Data>? data;

  HomeModel({this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? artistname;
  String? artistsongs;
  int? iV;

  Data({this.sId, this.artistname, this.artistsongs, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    artistname = json['artistname'];
    artistsongs = json['artistsongs'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['artistname'] = this.artistname;
    data['artistsongs'] = this.artistsongs;
    data['__v'] = this.iV;
    return data;
  }
}