part of openapi.api;

class GithubRepositorypermissions {
  
  bool admin = null;
  
  bool push = null;
  
  bool pull = null;
  
  String class_ = null;
  GithubRepositorypermissions();

  @override
  String toString() {
    return 'GithubRepositorypermissions[admin=$admin, push=$push, pull=$pull, class_=$class_, ]';
  }

  GithubRepositorypermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    admin = json['admin'];
    push = json['push'];
    pull = json['pull'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'push': push,
      'pull': pull,
      '_class': class_
    };
  }

  static List<GithubRepositorypermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubRepositorypermissions>() : json.map((value) => new GithubRepositorypermissions.fromJson(value)).toList();
  }

  static Map<String, GithubRepositorypermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubRepositorypermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubRepositorypermissions.fromJson(value));
    }
    return map;
  }
}

