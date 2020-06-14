class CelebrityFacesModel {
  List<CelebrityFaces> celebrityFaces;
  List<Null> unrecognizedFaces;

  CelebrityFacesModel({this.celebrityFaces, this.unrecognizedFaces});

  CelebrityFacesModel.fromJson(Map<String, dynamic> json) {
    if (json['CelebrityFaces'] != null) {
      celebrityFaces = new List<CelebrityFaces>();
      json['CelebrityFaces'].forEach((v) {
        celebrityFaces.add(new CelebrityFaces.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.celebrityFaces != null) {
      data['CelebrityFaces'] =
          this.celebrityFaces.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class CelebrityFaces {
  List<String> urls;
  String name;
  String id;
  Face face;
  int matchConfidence;

  CelebrityFaces(
      {this.urls, this.name, this.id, this.face, this.matchConfidence});

  CelebrityFaces.fromJson(Map<String, dynamic> json) {
    urls = json['Urls'].cast<String>();
    name = json['Name'];
    id = json['Id'];
    face = json['Face'] != null ? new Face.fromJson(json['Face']) : null;
    matchConfidence = json['MatchConfidence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Urls'] = this.urls;
    data['Name'] = this.name;
    data['Id'] = this.id;
    if (this.face != null) {
      data['Face'] = this.face.toJson();
    }
    data['MatchConfidence'] = this.matchConfidence;
    return data;
  }
}

class Face {
  BoundingBox boundingBox;
  double confidence;
  List<Landmarks> landmarks;
  Pose pose;
  Quality quality;

  Face(
      {this.boundingBox,
      this.confidence,
      this.landmarks,
      this.pose,
      this.quality});

  Face.fromJson(Map<String, dynamic> json) {
    boundingBox = json['BoundingBox'] != null
        ? new BoundingBox.fromJson(json['BoundingBox'])
        : null;
    confidence = json['Confidence'];
    if (json['Landmarks'] != null) {
      landmarks = new List<Landmarks>();
      json['Landmarks'].forEach((v) {
        landmarks.add(new Landmarks.fromJson(v));
      });
    }
    pose = json['Pose'] != null ? new Pose.fromJson(json['Pose']) : null;
    quality =
        json['Quality'] != null ? new Quality.fromJson(json['Quality']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.boundingBox != null) {
      data['BoundingBox'] = this.boundingBox.toJson();
    }
    data['Confidence'] = this.confidence;
    if (this.landmarks != null) {
      data['Landmarks'] = this.landmarks.map((v) => v.toJson()).toList();
    }
    if (this.pose != null) {
      data['Pose'] = this.pose.toJson();
    }
    if (this.quality != null) {
      data['Quality'] = this.quality.toJson();
    }
    return data;
  }
}

class BoundingBox {
  double width;
  double height;
  double left;
  double top;

  BoundingBox({this.width, this.height, this.left, this.top});

  BoundingBox.fromJson(Map<String, dynamic> json) {
    width = json['Width'];
    height = json['Height'];
    left = json['Left'];
    top = json['Top'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Width'] = this.width;
    data['Height'] = this.height;
    data['Left'] = this.left;
    data['Top'] = this.top;
    return data;
  }
}

class Landmarks {
  String type;
  double x;
  double y;

  Landmarks({this.type, this.x, this.y});

  Landmarks.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    x = json['X'];
    y = json['Y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['X'] = this.x;
    data['Y'] = this.y;
    return data;
  }
}

class Pose {
  double roll;
  double yaw;
  double pitch;

  Pose({this.roll, this.yaw, this.pitch});

  Pose.fromJson(Map<String, dynamic> json) {
    roll = json['Roll'];
    yaw = json['Yaw'];
    pitch = json['Pitch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Roll'] = this.roll;
    data['Yaw'] = this.yaw;
    data['Pitch'] = this.pitch;
    return data;
  }
}

class Quality {
  double brightness;
  double sharpness;

  Quality({this.brightness, this.sharpness});

  Quality.fromJson(Map<String, dynamic> json) {
    brightness = json['Brightness'];
    sharpness = json['Sharpness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Brightness'] = this.brightness;
    data['Sharpness'] = this.sharpness;
    return data;
  }
}
