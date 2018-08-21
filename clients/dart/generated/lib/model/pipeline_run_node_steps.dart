part of openapi.api;

class PipelineRunNodeSteps {
  PipelineRunNodeSteps();

  @override
  String toString() {
    return 'PipelineRunNodeSteps[]';
  }

  PipelineRunNodeSteps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineRunNodeSteps> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunNodeSteps>() : json.map((value) => new PipelineRunNodeSteps.fromJson(value)).toList();
  }

  static Map<String, PipelineRunNodeSteps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunNodeSteps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunNodeSteps.fromJson(value));
    }
    return map;
  }
}

