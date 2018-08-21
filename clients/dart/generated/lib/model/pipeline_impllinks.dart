part of openapi.api;

class PipelineImpllinks {
  
  Link runs = null;
  
  Link self = null;
  
  Link queue = null;
  
  Link actions = null;
  
  String class_ = null;
  PipelineImpllinks();

  @override
  String toString() {
    return 'PipelineImpllinks[runs=$runs, self=$self, queue=$queue, actions=$actions, class_=$class_, ]';
  }

  PipelineImpllinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    runs = new Link.fromJson(json['runs']);
    self = new Link.fromJson(json['self']);
    queue = new Link.fromJson(json['queue']);
    actions = new Link.fromJson(json['actions']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'runs': runs,
      'self': self,
      'queue': queue,
      'actions': actions,
      '_class': class_
    };
  }

  static List<PipelineImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineImpllinks>() : json.map((value) => new PipelineImpllinks.fromJson(value)).toList();
  }

  static Map<String, PipelineImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineImpllinks.fromJson(value));
    }
    return map;
  }
}

