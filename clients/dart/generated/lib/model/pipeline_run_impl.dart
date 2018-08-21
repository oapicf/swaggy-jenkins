part of openapi.api;

class PipelineRunImpl {
  
  String class_ = null;
  
  PipelineRunImpllinks links = null;
  
  int durationInMillis = null;
  
  String enQueueTime = null;
  
  String endTime = null;
  
  int estimatedDurationInMillis = null;
  
  String id = null;
  
  String organization = null;
  
  String pipeline = null;
  
  String result = null;
  
  String runSummary = null;
  
  String startTime = null;
  
  String state = null;
  
  String type = null;
  
  String commitId = null;
  PipelineRunImpl();

  @override
  String toString() {
    return 'PipelineRunImpl[class_=$class_, links=$links, durationInMillis=$durationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, estimatedDurationInMillis=$estimatedDurationInMillis, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, ]';
  }

  PipelineRunImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new PipelineRunImpllinks.fromJson(json['_links']);
    durationInMillis = json['durationInMillis'];
    enQueueTime = json['enQueueTime'];
    endTime = json['endTime'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    id = json['id'];
    organization = json['organization'];
    pipeline = json['pipeline'];
    result = json['result'];
    runSummary = json['runSummary'];
    startTime = json['startTime'];
    state = json['state'];
    type = json['type'];
    commitId = json['commitId'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'durationInMillis': durationInMillis,
      'enQueueTime': enQueueTime,
      'endTime': endTime,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'id': id,
      'organization': organization,
      'pipeline': pipeline,
      'result': result,
      'runSummary': runSummary,
      'startTime': startTime,
      'state': state,
      'type': type,
      'commitId': commitId
    };
  }

  static List<PipelineRunImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunImpl>() : json.map((value) => new PipelineRunImpl.fromJson(value)).toList();
  }

  static Map<String, PipelineRunImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunImpl.fromJson(value));
    }
    return map;
  }
}

