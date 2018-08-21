part of openapi.api;

class Organisations {
  Organisations();

  @override
  String toString() {
    return 'Organisations[]';
  }

  Organisations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<Organisations> listFromJson(List<dynamic> json) {
    return json == null ? new List<Organisations>() : json.map((value) => new Organisations.fromJson(value)).toList();
  }

  static Map<String, Organisations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Organisations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Organisations.fromJson(value));
    }
    return map;
  }
}

