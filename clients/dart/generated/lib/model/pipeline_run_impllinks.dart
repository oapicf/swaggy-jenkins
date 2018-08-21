part of openapi.api;

class PipelineRunImpllinks {
  
  Link nodes = null;
  
  Link log = null;
  
  Link self = null;
  
  Link actions = null;
  
  Link steps = null;
  
  String class_ = null;
  PipelineRunImpllinks();

  @override
  String toString() {
    return 'PipelineRunImpllinks[nodes=$nodes, log=$log, self=$self, actions=$actions, steps=$steps, class_=$class_, ]';
  }

  PipelineRunImpllinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodes = new Link.fromJson(json['nodes']);
    log = new Link.fromJson(json['log']);
    self = new Link.fromJson(json['self']);
    actions = new Link.fromJson(json['actions']);
    steps = new Link.fromJson(json['steps']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'nodes': nodes,
      'log': log,
      'self': self,
      'actions': actions,
      'steps': steps,
      '_class': class_
    };
  }

  static List<PipelineRunImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunImpllinks>() : json.map((value) => new PipelineRunImpllinks.fromJson(value)).toList();
  }

  static Map<String, PipelineRunImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunImpllinks.fromJson(value));
    }
    return map;
  }
}

