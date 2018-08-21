part of openapi.api;

class Users {
  Users();

  @override
  String toString() {
    return 'Users[]';
  }

  Users.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<Users> listFromJson(List<dynamic> json) {
    return json == null ? new List<Users>() : json.map((value) => new Users.fromJson(value)).toList();
  }

  static Map<String, Users> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Users>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Users.fromJson(value));
    }
    return map;
  }
}

