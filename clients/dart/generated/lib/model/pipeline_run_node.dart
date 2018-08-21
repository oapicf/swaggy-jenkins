part of openapi.api;

class PipelineRunNode {
  
  String class_ = null;
  
  String displayName = null;
  
  int durationInMillis = null;
  
  List<PipelineRunNodeedges> edges = [];
  
  String id = null;
  
  String result = null;
  
  String startTime = null;
  
  String state = null;
  PipelineRunNode();

  @override
  String toString() {
    return 'PipelineRunNode[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, edges=$edges, id=$id, result=$result, startTime=$startTime, state=$state, ]';
  }

  PipelineRunNode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    displayName = json['displayName'];
    durationInMillis = json['durationInMillis'];
    edges = PipelineRunNodeedges.listFromJson(json['edges']);
    id = json['id'];
    result = json['result'];
    startTime = json['startTime'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'displayName': displayName,
      'durationInMillis': durationInMillis,
      'edges': edges,
      'id': id,
      'result': result,
      'startTime': startTime,
      'state': state
    };
  }

  static List<PipelineRunNode> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunNode>() : json.map((value) => new PipelineRunNode.fromJson(value)).toList();
  }

  static Map<String, PipelineRunNode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunNode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunNode.fromJson(value));
    }
    return map;
  }
}

