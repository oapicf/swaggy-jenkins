part of openapi.api;

class PipelineRunSteps {
  PipelineRunSteps();

  @override
  String toString() {
    return 'PipelineRunSteps[]';
  }

  PipelineRunSteps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineRunSteps> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunSteps>() : json.map((value) => new PipelineRunSteps.fromJson(value)).toList();
  }

  static Map<String, PipelineRunSteps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunSteps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunSteps.fromJson(value));
    }
    return map;
  }
}

