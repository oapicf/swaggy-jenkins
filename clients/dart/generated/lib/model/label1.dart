part of openapi.api;

class Label1 {
  
  String class_ = null;
  Label1();

  @override
  String toString() {
    return 'Label1[class_=$class_, ]';
  }

  Label1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_
    };
  }

  static List<Label1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Label1>() : json.map((value) => new Label1.fromJson(value)).toList();
  }

  static Map<String, Label1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Label1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Label1.fromJson(value));
    }
    return map;
  }
}

