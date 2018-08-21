part of openapi.api;

class FavoriteImpl {
  
  String class_ = null;
  
  FavoriteImpllinks links = null;
  
  PipelineImpl item = null;
  FavoriteImpl();

  @override
  String toString() {
    return 'FavoriteImpl[class_=$class_, links=$links, item=$item, ]';
  }

  FavoriteImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new FavoriteImpllinks.fromJson(json['_links']);
    item = new PipelineImpl.fromJson(json['item']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'item': item
    };
  }

  static List<FavoriteImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteImpl>() : json.map((value) => new FavoriteImpl.fromJson(value)).toList();
  }

  static Map<String, FavoriteImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteImpl.fromJson(value));
    }
    return map;
  }
}

