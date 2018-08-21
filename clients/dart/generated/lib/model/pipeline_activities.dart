part of openapi.api;

class PipelineActivities {
  PipelineActivities();

  @override
  String toString() {
    return 'PipelineActivities[]';
  }

  PipelineActivities.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineActivities> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineActivities>() : json.map((value) => new PipelineActivities.fromJson(value)).toList();
  }

  static Map<String, PipelineActivities> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineActivities>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineActivities.fromJson(value));
    }
    return map;
  }
}

