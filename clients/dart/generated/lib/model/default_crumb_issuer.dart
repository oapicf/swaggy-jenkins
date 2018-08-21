part of openapi.api;

class DefaultCrumbIssuer {
  
  String class_ = null;
  
  String crumb = null;
  
  String crumbRequestField = null;
  DefaultCrumbIssuer();

  @override
  String toString() {
    return 'DefaultCrumbIssuer[class_=$class_, crumb=$crumb, crumbRequestField=$crumbRequestField, ]';
  }

  DefaultCrumbIssuer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    crumb = json['crumb'];
    crumbRequestField = json['crumbRequestField'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'crumb': crumb,
      'crumbRequestField': crumbRequestField
    };
  }

  static List<DefaultCrumbIssuer> listFromJson(List<dynamic> json) {
    return json == null ? new List<DefaultCrumbIssuer>() : json.map((value) => new DefaultCrumbIssuer.fromJson(value)).toList();
  }

  static Map<String, DefaultCrumbIssuer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DefaultCrumbIssuer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DefaultCrumbIssuer.fromJson(value));
    }
    return map;
  }
}

