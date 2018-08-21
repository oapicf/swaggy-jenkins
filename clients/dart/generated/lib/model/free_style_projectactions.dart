part of openapi.api;

class FreeStyleProjectactions {
  
  String class_ = null;
  FreeStyleProjectactions();

  @override
  String toString() {
    return 'FreeStyleProjectactions[class_=$class_, ]';
  }

  FreeStyleProjectactions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_
    };
  }

  static List<FreeStyleProjectactions> listFromJson(List<dynamic> json) {
    return json == null ? new List<FreeStyleProjectactions>() : json.map((value) => new FreeStyleProjectactions.fromJson(value)).toList();
  }

  static Map<String, FreeStyleProjectactions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FreeStyleProjectactions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FreeStyleProjectactions.fromJson(value));
    }
    return map;
  }
}

