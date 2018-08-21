part of openapi.api;

class StringParameterDefinition {
  
  String class_ = null;
  
  StringParameterValue defaultParameterValue = null;
  
  String description = null;
  
  String name = null;
  
  String type = null;
  StringParameterDefinition();

  @override
  String toString() {
    return 'StringParameterDefinition[class_=$class_, defaultParameterValue=$defaultParameterValue, description=$description, name=$name, type=$type, ]';
  }

  StringParameterDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    defaultParameterValue = new StringParameterValue.fromJson(json['defaultParameterValue']);
    description = json['description'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'defaultParameterValue': defaultParameterValue,
      'description': description,
      'name': name,
      'type': type
    };
  }

  static List<StringParameterDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<StringParameterDefinition>() : json.map((value) => new StringParameterDefinition.fromJson(value)).toList();
  }

  static Map<String, StringParameterDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StringParameterDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StringParameterDefinition.fromJson(value));
    }
    return map;
  }
}

