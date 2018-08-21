part of openapi.api;

class BranchImpllinks {
  
  Link self = null;
  
  Link actions = null;
  
  Link runs = null;
  
  Link queue = null;
  
  String class_ = null;
  BranchImpllinks();

  @override
  String toString() {
    return 'BranchImpllinks[self=$self, actions=$actions, runs=$runs, queue=$queue, class_=$class_, ]';
  }

  BranchImpllinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new Link.fromJson(json['self']);
    actions = new Link.fromJson(json['actions']);
    runs = new Link.fromJson(json['runs']);
    queue = new Link.fromJson(json['queue']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'actions': actions,
      'runs': runs,
      'queue': queue,
      '_class': class_
    };
  }

  static List<BranchImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchImpllinks>() : json.map((value) => new BranchImpllinks.fromJson(value)).toList();
  }

  static Map<String, BranchImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchImpllinks.fromJson(value));
    }
    return map;
  }
}

