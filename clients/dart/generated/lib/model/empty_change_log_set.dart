part of openapi.api;

class EmptyChangeLogSet {
  
  String class_ = null;
  
  String kind = null;
  EmptyChangeLogSet();

  @override
  String toString() {
    return 'EmptyChangeLogSet[class_=$class_, kind=$kind, ]';
  }

  EmptyChangeLogSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    kind = json['kind'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'kind': kind
    };
  }

  static List<EmptyChangeLogSet> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmptyChangeLogSet>() : json.map((value) => new EmptyChangeLogSet.fromJson(value)).toList();
  }

  static Map<String, EmptyChangeLogSet> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmptyChangeLogSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmptyChangeLogSet.fromJson(value));
    }
    return map;
  }
}

