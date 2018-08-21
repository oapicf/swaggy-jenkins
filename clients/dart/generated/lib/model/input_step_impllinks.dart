part of openapi.api;

class InputStepImpllinks {
  
  Link self = null;
  
  String class_ = null;
  InputStepImpllinks();

  @override
  String toString() {
    return 'InputStepImpllinks[self=$self, class_=$class_, ]';
  }

  InputStepImpllinks.fromJson(Map<String, dynamic> json) {
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

  static List<InputStepImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<InputStepImpllinks>() : json.map((value) => new InputStepImpllinks.fromJson(value)).toList();
  }

  static Map<String, InputStepImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InputStepImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InputStepImpllinks.fromJson(value));
    }
    return map;
  }
}

