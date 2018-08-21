part of openapi.api;

class AllView {
  
  String class_ = null;
  
  String name = null;
  
  String url = null;
  AllView();

  @override
  String toString() {
    return 'AllView[class_=$class_, name=$name, url=$url, ]';
  }

  AllView.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'name': name,
      'url': url
    };
  }

  static List<AllView> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllView>() : json.map((value) => new AllView.fromJson(value)).toList();
  }

  static Map<String, AllView> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllView>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllView.fromJson(value));
    }
    return map;
  }
}

