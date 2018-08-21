part of openapi.api;

class PipelineRuns {
  PipelineRuns();

  @override
  String toString() {
    return 'PipelineRuns[]';
  }

  PipelineRuns.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineRuns> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRuns>() : json.map((value) => new PipelineRuns.fromJson(value)).toList();
  }

  static Map<String, PipelineRuns> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRuns>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRuns.fromJson(value));
    }
    return map;
  }
}

