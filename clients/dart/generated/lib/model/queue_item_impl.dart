part of openapi.api;

class QueueItemImpl {
  
  String class_ = null;
  
  int expectedBuildNumber = null;
  
  String id = null;
  
  String pipeline = null;
  
  int queuedTime = null;
  QueueItemImpl();

  @override
  String toString() {
    return 'QueueItemImpl[class_=$class_, expectedBuildNumber=$expectedBuildNumber, id=$id, pipeline=$pipeline, queuedTime=$queuedTime, ]';
  }

  QueueItemImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    expectedBuildNumber = json['expectedBuildNumber'];
    id = json['id'];
    pipeline = json['pipeline'];
    queuedTime = json['queuedTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'expectedBuildNumber': expectedBuildNumber,
      'id': id,
      'pipeline': pipeline,
      'queuedTime': queuedTime
    };
  }

  static List<QueueItemImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueueItemImpl>() : json.map((value) => new QueueItemImpl.fromJson(value)).toList();
  }

  static Map<String, QueueItemImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueueItemImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueueItemImpl.fromJson(value));
    }
    return map;
  }
}

