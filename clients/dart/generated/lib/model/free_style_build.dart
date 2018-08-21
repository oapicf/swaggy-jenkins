part of openapi.api;

class FreeStyleBuild {
  
  String class_ = null;
  
  int number = null;
  
  String url = null;
  
  List<CauseAction> actions = [];
  
  bool building = null;
  
  String description = null;
  
  String displayName = null;
  
  int duration = null;
  
  int estimatedDuration = null;
  
  String executor = null;
  
  String fullDisplayName = null;
  
  String id = null;
  
  bool keepLog = null;
  
  int queueId = null;
  
  String result = null;
  
  int timestamp = null;
  
  String builtOn = null;
  
  EmptyChangeLogSet changeSet = null;
  FreeStyleBuild();

  @override
  String toString() {
    return 'FreeStyleBuild[class_=$class_, number=$number, url=$url, actions=$actions, building=$building, description=$description, displayName=$displayName, duration=$duration, estimatedDuration=$estimatedDuration, executor=$executor, fullDisplayName=$fullDisplayName, id=$id, keepLog=$keepLog, queueId=$queueId, result=$result, timestamp=$timestamp, builtOn=$builtOn, changeSet=$changeSet, ]';
  }

  FreeStyleBuild.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    number = json['number'];
    url = json['url'];
    actions = CauseAction.listFromJson(json['actions']);
    building = json['building'];
    description = json['description'];
    displayName = json['displayName'];
    duration = json['duration'];
    estimatedDuration = json['estimatedDuration'];
    executor = json['executor'];
    fullDisplayName = json['fullDisplayName'];
    id = json['id'];
    keepLog = json['keepLog'];
    queueId = json['queueId'];
    result = json['result'];
    timestamp = json['timestamp'];
    builtOn = json['builtOn'];
    changeSet = new EmptyChangeLogSet.fromJson(json['changeSet']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'number': number,
      'url': url,
      'actions': actions,
      'building': building,
      'description': description,
      'displayName': displayName,
      'duration': duration,
      'estimatedDuration': estimatedDuration,
      'executor': executor,
      'fullDisplayName': fullDisplayName,
      'id': id,
      'keepLog': keepLog,
      'queueId': queueId,
      'result': result,
      'timestamp': timestamp,
      'builtOn': builtOn,
      'changeSet': changeSet
    };
  }

  static List<FreeStyleBuild> listFromJson(List<dynamic> json) {
    return json == null ? new List<FreeStyleBuild>() : json.map((value) => new FreeStyleBuild.fromJson(value)).toList();
  }

  static Map<String, FreeStyleBuild> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FreeStyleBuild>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FreeStyleBuild.fromJson(value));
    }
    return map;
  }
}

