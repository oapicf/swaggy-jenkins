part of openapi.api;

class Organisation {
  
  String class_ = null;
  
  String name = null;
  Organisation();

  @override
  String toString() {
    return 'Organisation[class_=$class_, name=$name, ]';
  }

  Organisation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'name': name
    };
  }

  static List<Organisation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Organisation>() : json.map((value) => new Organisation.fromJson(value)).toList();
  }

  static Map<String, Organisation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Organisation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Organisation.fromJson(value));
    }
    return map;
  }
}

