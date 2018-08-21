part of openapi.api;

class InputStepImpl {
  
  String class_ = null;
  
  InputStepImpllinks links = null;
  
  String id = null;
  
  String message = null;
  
  String ok = null;
  
  List<StringParameterDefinition> parameters = [];
  
  String submitter = null;
  InputStepImpl();

  @override
  String toString() {
    return 'InputStepImpl[class_=$class_, links=$links, id=$id, message=$message, ok=$ok, parameters=$parameters, submitter=$submitter, ]';
  }

  InputStepImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new InputStepImpllinks.fromJson(json['_links']);
    id = json['id'];
    message = json['message'];
    ok = json['ok'];
    parameters = StringParameterDefinition.listFromJson(json['parameters']);
    submitter = json['submitter'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'id': id,
      'message': message,
      'ok': ok,
      'parameters': parameters,
      'submitter': submitter
    };
  }

  static List<InputStepImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<InputStepImpl>() : json.map((value) => new InputStepImpl.fromJson(value)).toList();
  }

  static Map<String, InputStepImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InputStepImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InputStepImpl.fromJson(value));
    }
    return map;
  }
}

