part of openapi.api;

class HudsonassignedLabels {
  
  String class_ = null;
  HudsonassignedLabels();

  @override
  String toString() {
    return 'HudsonassignedLabels[class_=$class_, ]';
  }

  HudsonassignedLabels.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_
    };
  }

  static List<HudsonassignedLabels> listFromJson(List<dynamic> json) {
    return json == null ? new List<HudsonassignedLabels>() : json.map((value) => new HudsonassignedLabels.fromJson(value)).toList();
  }

  static Map<String, HudsonassignedLabels> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HudsonassignedLabels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HudsonassignedLabels.fromJson(value));
    }
    return map;
  }
}

