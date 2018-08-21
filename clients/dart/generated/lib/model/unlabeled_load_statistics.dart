part of openapi.api;

class UnlabeledLoadStatistics {
  
  String class_ = null;
  UnlabeledLoadStatistics();

  @override
  String toString() {
    return 'UnlabeledLoadStatistics[class_=$class_, ]';
  }

  UnlabeledLoadStatistics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_
    };
  }

  static List<UnlabeledLoadStatistics> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnlabeledLoadStatistics>() : json.map((value) => new UnlabeledLoadStatistics.fromJson(value)).toList();
  }

  static Map<String, UnlabeledLoadStatistics> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnlabeledLoadStatistics>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnlabeledLoadStatistics.fromJson(value));
    }
    return map;
  }
}

