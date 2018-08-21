part of openapi.api;

class PipelineActivity {
  
  String class_ = null;
  
  List<PipelineActivityartifacts> artifacts = [];
  
  int durationInMillis = null;
  
  int estimatedDurationInMillis = null;
  
  String enQueueTime = null;
  
  String endTime = null;
  
  String id = null;
  
  String organization = null;
  
  String pipeline = null;
  
  String result = null;
  
  String runSummary = null;
  
  String startTime = null;
  
  String state = null;
  
  String type = null;
  
  String commitId = null;
  PipelineActivity();

  @override
  String toString() {
    return 'PipelineActivity[class_=$class_, artifacts=$artifacts, durationInMillis=$durationInMillis, estimatedDurationInMillis=$estimatedDurationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, ]';
  }

  PipelineActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    artifacts = PipelineActivityartifacts.listFromJson(json['artifacts']);
    durationInMillis = json['durationInMillis'];
    estimatedDurationInMillis = json['estimatedDurationInMillis'];
    enQueueTime = json['enQueueTime'];
    endTime = json['endTime'];
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
      'artifacts': artifacts,
      'durationInMillis': durationInMillis,
      'estimatedDurationInMillis': estimatedDurationInMillis,
      'enQueueTime': enQueueTime,
      'endTime': endTime,
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

  static List<PipelineActivity> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineActivity>() : json.map((value) => new PipelineActivity.fromJson(value)).toList();
  }

  static Map<String, PipelineActivity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineActivity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineActivity.fromJson(value));
    }
    return map;
  }
}

