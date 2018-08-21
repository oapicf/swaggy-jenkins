part of openapi.api;

class ClockDifference {
  
  String class_ = null;
  
  int diff = null;
  ClockDifference();

  @override
  String toString() {
    return 'ClockDifference[class_=$class_, diff=$diff, ]';
  }

  ClockDifference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    diff = json['diff'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'diff': diff
    };
  }

  static List<ClockDifference> listFromJson(List<dynamic> json) {
    return json == null ? new List<ClockDifference>() : json.map((value) => new ClockDifference.fromJson(value)).toList();
  }

  static Map<String, ClockDifference> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ClockDifference>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ClockDifference.fromJson(value));
    }
    return map;
  }
}

