part of openapi.api;

class PipelineBranchesitemlatestRun {
  
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
  PipelineBranchesitemlatestRun();

  @override
  String toString() {
    return 'PipelineBranchesitemlatestRun[durationInMillis=$durationInMillis, estimatedDurationInMillis=$estimatedDurationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, class_=$class_, ]';
  }

  PipelineBranchesitemlatestRun.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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

  static List<PipelineBranchesitemlatestRun> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineBranchesitemlatestRun>() : json.map((value) => new PipelineBranchesitemlatestRun.fromJson(value)).toList();
  }

  static Map<String, PipelineBranchesitemlatestRun> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineBranchesitemlatestRun>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineBranchesitemlatestRun.fromJson(value));
    }
    return map;
  }
}

