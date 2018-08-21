part of openapi.api;

class ExtensionClassImpllinks {
  
  Link self = null;
  
  String class_ = null;
  ExtensionClassImpllinks();

  @override
  String toString() {
    return 'ExtensionClassImpllinks[self=$self, class_=$class_, ]';
  }

  ExtensionClassImpllinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new Link.fromJson(json['self']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      '_class': class_
    };
  }

  static List<ExtensionClassImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExtensionClassImpllinks>() : json.map((value) => new ExtensionClassImpllinks.fromJson(value)).toList();
  }

  static Map<String, ExtensionClassImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExtensionClassImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExtensionClassImpllinks.fromJson(value));
    }
    return map;
  }
}

