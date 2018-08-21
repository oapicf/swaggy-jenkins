part of openapi.api;

class PipelineQueue {
  PipelineQueue();

  @override
  String toString() {
    return 'PipelineQueue[]';
  }

  PipelineQueue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<PipelineQueue> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineQueue>() : json.map((value) => new PipelineQueue.fromJson(value)).toList();
  }

  static Map<String, PipelineQueue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineQueue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineQueue.fromJson(value));
    }
    return map;
  }
}

