part of openapi.api;

class FavoriteImpllinks {
  
  Link self = null;
  
  String class_ = null;
  FavoriteImpllinks();

  @override
  String toString() {
    return 'FavoriteImpllinks[self=$self, class_=$class_, ]';
  }

  FavoriteImpllinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new Link.fromJson(json['self']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      '_class': class_
    };
  }

  static List<FavoriteImpllinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteImpllinks>() : json.map((value) => new FavoriteImpllinks.fromJson(value)).toList();
  }

  static Map<String, FavoriteImpllinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteImpllinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteImpllinks.fromJson(value));
    }
    return map;
  }
}

