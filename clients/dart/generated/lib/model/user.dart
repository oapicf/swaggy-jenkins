part of openapi.api;

class User {
  
  String class_ = null;
  
  String id = null;
  
  String fullName = null;
  
  String email = null;
  
  String name = null;
  User();

  @override
  String toString() {
    return 'User[class_=$class_, id=$id, fullName=$fullName, email=$email, name=$name, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'id': id,
      'fullName': fullName,
      'email': email,
      'name': name
    };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

