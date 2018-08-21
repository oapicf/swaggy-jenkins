part of openapi.api;

class PipelineStepImpl {
  
  String class_ = null;
  
  PipelineStepImpllinks links = null;
  
  String displayName = null;
  
  int durationInMillis = null;
  
  String id = null;
  
  InputStepImpl input = null;
  
  String result = null;
  
  String startTime = null;
  
  String state = null;
  PipelineStepImpl();

  @override
  String toString() {
    return 'PipelineStepImpl[class_=$class_, links=$links, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, input=$input, result=$result, startTime=$startTime, state=$state, ]';
  }

  PipelineStepImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new PipelineStepImpllinks.fromJson(json['_links']);
    displayName = json['displayName'];
    durationInMillis = json['durationInMillis'];
    id = json['id'];
    input = new InputStepImpl.fromJson(json['input']);
    result = json['result'];
    startTime = json['startTime'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'displayName': displayName,
      'durationInMillis': durationInMillis,
      'id': id,
      'input': input,
      'result': result,
      'startTime': startTime,
      'state': state
    };
  }

  static List<PipelineStepImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineStepImpl>() : json.map((value) => new PipelineStepImpl.fromJson(value)).toList();
  }

  static Map<String, PipelineStepImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineStepImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineStepImpl.fromJson(value));
    }
    return map;
  }
}

