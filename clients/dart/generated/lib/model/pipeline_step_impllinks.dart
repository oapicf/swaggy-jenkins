part of openapi.api;

class PipelineStepImpllinks {
  
  Link self = null;
  
  Link actions = null;
  
  String class_ = null;
  PipelineStepImpllinks();

  @override
  String toString() {
    return 'PipelineStepImpllinks[self=$self, actions=$actions, class_=$class_, ]';
  }

  PipelineStepImpllinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new Link.fromJson(json['self']);
    actions = new Link.fromJson(json['actions']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'actions': actions,
      '_class': class_
    };
  }

  static List<PipelineStepImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineStepImpllinks>() : json.map((value) => new PipelineStepImpllinks.fromJson(value)).toList();
  }

  static Map<String, PipelineStepImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineStepImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineStepImpllinks.fromJson(value));
    }
    return map;
  }
}

