part of openapi.api;

class PipelineRunNodeedges {
  
  String id = null;
  
  String class_ = null;
  PipelineRunNodeedges();

  @override
  String toString() {
    return 'PipelineRunNodeedges[id=$id, class_=$class_, ]';
  }

  PipelineRunNodeedges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      '_class': class_
    };
  }

  static List<PipelineRunNodeedges> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunNodeedges>() : json.map((value) => new PipelineRunNodeedges.fromJson(value)).toList();
  }

  static Map<String, PipelineRunNodeedges> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunNodeedges>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunNodeedges.fromJson(value));
    }
    return map;
  }
}

