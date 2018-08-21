part of openapi.api;

class UserFavorites {
  UserFavorites();

  @override
  String toString() {
    return 'UserFavorites[]';
  }

  UserFavorites.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
    };
  }

  static List<UserFavorites> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserFavorites>() : json.map((value) => new UserFavorites.fromJson(value)).toList();
  }

  static Map<String, UserFavorites> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserFavorites>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserFavorites.fromJson(value));
    }
    return map;
  }
}

