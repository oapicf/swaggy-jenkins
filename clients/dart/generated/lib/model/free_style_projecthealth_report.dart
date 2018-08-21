part of openapi.api;

class FreeStyleProjecthealthReport {
  
  String description = null;
  
  String iconClassName = null;
  
  String iconUrl = null;
  
  int score = null;
  
  String class_ = null;
  FreeStyleProjecthealthReport();

  @override
  String toString() {
    return 'FreeStyleProjecthealthReport[description=$description, iconClassName=$iconClassName, iconUrl=$iconUrl, score=$score, class_=$class_, ]';
  }

  FreeStyleProjecthealthReport.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    iconClassName = json['iconClassName'];
    iconUrl = json['iconUrl'];
    score = json['score'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'iconClassName': iconClassName,
      'iconUrl': iconUrl,
      'score': score,
      '_class': class_
    };
  }

  static List<FreeStyleProjecthealthReport> listFromJson(List<dynamic> json) {
    return json == null ? new List<FreeStyleProjecthealthReport>() : json.map((value) => new FreeStyleProjecthealthReport.fromJson(value)).toList();
  }

  static Map<String, FreeStyleProjecthealthReport> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FreeStyleProjecthealthReport>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FreeStyleProjecthealthReport.fromJson(value));
    }
    return map;
  }
}

