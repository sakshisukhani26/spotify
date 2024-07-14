class PlayModel {
  String? message;
  List<Musics>? musics;

  PlayModel({this.message, this.musics});

  PlayModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['musics'] != null) {
      musics = <Musics>[];
      json['musics'].forEach((v) {
        musics!.add(new Musics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.musics != null) {
      data['musics'] = this.musics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Musics {
  String? sId;
  String? music;

  Musics({this.sId, this.music});

  Musics.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    music = json['music'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['music'] = this.music;
    return data;
  }
}