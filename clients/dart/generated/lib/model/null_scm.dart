part of openapi.api;

class NullSCM {
  
  String class_ = null;
  NullSCM();

  @override
  String toString() {
    return 'NullSCM[class_=$class_, ]';
  }

  NullSCM.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_
    };
  }

  static List<NullSCM> listFromJson(List<dynamic> json) {
    return json == null ? new List<NullSCM>() : json.map((value) => new NullSCM.fromJson(value)).toList();
  }

  static Map<String, NullSCM> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NullSCM>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NullSCM.fromJson(value));
    }
    return map;
  }
}

