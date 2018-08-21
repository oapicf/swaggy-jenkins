part of openapi.api;

class QueueLeftItem {
  
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
  
  bool cancelled = null;
  
  FreeStyleBuild executable = null;
  QueueLeftItem();

  @override
  String toString() {
    return 'QueueLeftItem[class_=$class_, actions=$actions, blocked=$blocked, buildable=$buildable, id=$id, inQueueSince=$inQueueSince, params=$params, stuck=$stuck, task=$task, url=$url, why=$why, cancelled=$cancelled, executable=$executable, ]';
  }

  QueueLeftItem.fromJson(Map<String, dynamic> json) {
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
    cancelled = json['cancelled'];
    executable = new FreeStyleBuild.fromJson(json['executable']);
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
      'cancelled': cancelled,
      'executable': executable
    };
  }

  static List<QueueLeftItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueueLeftItem>() : json.map((value) => new QueueLeftItem.fromJson(value)).toList();
  }

  static Map<String, QueueLeftItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueueLeftItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueueLeftItem.fromJson(value));
    }
    return map;
  }
}

