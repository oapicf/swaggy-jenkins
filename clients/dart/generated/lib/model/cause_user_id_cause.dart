part of openapi.api;

class CauseUserIdCause {
  
  String class_ = null;
  
  String shortDescription = null;
  
  String userId = null;
  
  String userName = null;
  CauseUserIdCause();

  @override
  String toString() {
    return 'CauseUserIdCause[class_=$class_, shortDescription=$shortDescription, userId=$userId, userName=$userName, ]';
  }

  CauseUserIdCause.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    shortDescription = json['shortDescription'];
    userId = json['userId'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'shortDescription': shortDescription,
      'userId': userId,
      'userName': userName
    };
  }

  static List<CauseUserIdCause> listFromJson(List<dynamic> json) {
    return json == null ? new List<CauseUserIdCause>() : json.map((value) => new CauseUserIdCause.fromJson(value)).toList();
  }

  static Map<String, CauseUserIdCause> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CauseUserIdCause>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CauseUserIdCause.fromJson(value));
    }
    return map;
  }
}

