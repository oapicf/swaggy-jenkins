part of openapi.api;

class ExtensionClassImpl {
  
  String class_ = null;
  
  ExtensionClassImpllinks links = null;
  
  List<String> classes = [];
  ExtensionClassImpl();

  @override
  String toString() {
    return 'ExtensionClassImpl[class_=$class_, links=$links, classes=$classes, ]';
  }

  ExtensionClassImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new ExtensionClassImpllinks.fromJson(json['_links']);
    classes = (json['classes'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'classes': classes
    };
  }

  static List<ExtensionClassImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExtensionClassImpl>() : json.map((value) => new ExtensionClassImpl.fromJson(value)).toList();
  }

  static Map<String, ExtensionClassImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExtensionClassImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExtensionClassImpl.fromJson(value));
    }
    return map;
  }
}

