part of openapi.api;

class Queue {
  
  String class_ = null;
  
  List<QueueBlockedItem> items = [];
  Queue();

  @override
  String toString() {
    return 'Queue[class_=$class_, items=$items, ]';
  }

  Queue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    items = QueueBlockedItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'items': items
    };
  }

  static List<Queue> listFromJson(List<dynamic> json) {
    return json == null ? new List<Queue>() : json.map((value) => new Queue.fromJson(value)).toList();
  }

  static Map<String, Queue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Queue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Queue.fromJson(value));
    }
    return map;
  }
}

