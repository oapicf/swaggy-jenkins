part of openapi.api;

class BranchImplpermissions {
  
  bool create = null;
  
  bool read = null;
  
  bool start = null;
  
  bool stop = null;
  
  String class_ = null;
  BranchImplpermissions();

  @override
  String toString() {
    return 'BranchImplpermissions[create=$create, read=$read, start=$start, stop=$stop, class_=$class_, ]';
  }

  BranchImplpermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    create = json['create'];
    read = json['read'];
    start = json['start'];
    stop = json['stop'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'create': create,
      'read': read,
      'start': start,
      'stop': stop,
      '_class': class_
    };
  }

  static List<BranchImplpermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchImplpermissions>() : json.map((value) => new BranchImplpermissions.fromJson(value)).toList();
  }

  static Map<String, BranchImplpermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchImplpermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchImplpermissions.fromJson(value));
    }
    return map;
  }
}

