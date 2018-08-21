part of openapi.api;

class PipelinelatestRun {
  
  List<PipelinelatestRunartifacts> artifacts = [];
  
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
  
  String class_ = null;
  PipelinelatestRun();

  @override
  String toString() {
    return 'PipelinelatestRun[artifacts=$artifacts, durationInMillis=$durationInMillis, estimatedDurationInMillis=$estimatedDurationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, class_=$class_, ]';
  }

  PipelinelatestRun.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    artifacts = PipelinelatestRunartifacts.listFromJson(json['artifacts']);
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
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
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
      'commitId': commitId,
      '_class': class_
    };
  }

  static List<PipelinelatestRun> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelinelatestRun>() : json.map((value) => new PipelinelatestRun.fromJson(value)).toList();
  }

  static Map<String, PipelinelatestRun> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelinelatestRun>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelinelatestRun.fromJson(value));
    }
    return map;
  }
}

