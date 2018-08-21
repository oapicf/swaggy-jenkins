part of openapi.api;

class QueueBlockedItem {
  
  String class_ = null;
  
  List<CauseAction> actions = [];
  
  bool blocked = null;
  
  bool buildable = null;
  
  int id = null;
  
  int inQueueSince = null;
  
  String params = null;
  
  bool stuck = null;
  
  FreeStyleProject task = null;
  
  String url = null;
  
  String why = null;
  
  int buildableStartMilliseconds = null;
  QueueBlockedItem();

  @override
  String toString() {
    return 'QueueBlockedItem[class_=$class_, actions=$actions, blocked=$blocked, buildable=$buildable, id=$id, inQueueSince=$inQueueSince, params=$params, stuck=$stuck, task=$task, url=$url, why=$why, buildableStartMilliseconds=$buildableStartMilliseconds, ]';
  }

  QueueBlockedItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    actions = CauseAction.listFromJson(json['actions']);
    blocked = json['blocked'];
    buildable = json['buildable'];
    id = json['id'];
    inQueueSince = json['inQueueSince'];
    params = json['params'];
    stuck = json['stuck'];
    task = new FreeStyleProject.fromJson(json['task']);
    url = json['url'];
    why = json['why'];
    buildableStartMilliseconds = json['buildableStartMilliseconds'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'actions': actions,
      'blocked': blocked,
      'buildable': buildable,
      'id': id,
      'inQueueSince': inQueueSince,
      'params': params,
      'stuck': stuck,
      'task': task,
      'url': url,
      'why': why,
      'buildableStartMilliseconds': buildableStartMilliseconds
    };
  }

  static List<QueueBlockedItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueueBlockedItem>() : json.map((value) => new QueueBlockedItem.fromJson(value)).toList();
  }

  static Map<String, QueueBlockedItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueueBlockedItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueueBlockedItem.fromJson(value));
    }
    return map;
  }
}

