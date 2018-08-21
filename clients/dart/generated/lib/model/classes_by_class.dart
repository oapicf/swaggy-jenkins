part of openapi.api;

class ClassesByClass {
  
  List<String> classes = [];
  
  String class_ = null;
  ClassesByClass();

  @override
  String toString() {
    return 'ClassesByClass[classes=$classes, class_=$class_, ]';
  }

  ClassesByClass.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    classes = (json['classes'] as List).map((item) => item as String).toList();
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'classes': classes,
      '_class': class_
    };
  }

  static List<ClassesByClass> listFromJson(List<dynamic> json) {
    return json == null ? new List<ClassesByClass>() : json.map((value) => new ClassesByClass.fromJson(value)).toList();
  }

  static Map<String, ClassesByClass> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ClassesByClass>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ClassesByClass.fromJson(value));
    }
    return map;
  }
}

