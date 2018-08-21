part of openapi.api;

class CauseAction {
  
  String class_ = null;
  
  List<CauseUserIdCause> causes = [];
  CauseAction();

  @override
  String toString() {
    return 'CauseAction[class_=$class_, causes=$causes, ]';
  }

  CauseAction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    causes = CauseUserIdCause.listFromJson(json['causes']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'causes': causes
    };
  }

  static List<CauseAction> listFromJson(List<dynamic> json) {
    return json == null ? new List<CauseAction>() : json.map((value) => new CauseAction.fromJson(value)).toList();
  }

  static Map<String, CauseAction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CauseAction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CauseAction.fromJson(value));
    }
    return map;
  }
}

