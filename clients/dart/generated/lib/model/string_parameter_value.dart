part of openapi.api;

class StringParameterValue {
  
  String class_ = null;
  
  String name = null;
  
  String value = null;
  StringParameterValue();

  @override
  String toString() {
    return 'StringParameterValue[class_=$class_, name=$name, value=$value, ]';
  }

  StringParameterValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'name': name,
      'value': value
    };
  }

  static List<StringParameterValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<StringParameterValue>() : json.map((value) => new StringParameterValue.fromJson(value)).toList();
  }

  static Map<String, StringParameterValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StringParameterValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StringParameterValue.fromJson(value));
    }
    return map;
  }
}

