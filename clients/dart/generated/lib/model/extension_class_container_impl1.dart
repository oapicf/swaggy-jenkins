part of openapi.api;

class ExtensionClassContainerImpl1 {
  
  String class_ = null;
  
  ExtensionClassContainerImpl1links links = null;
  
  ExtensionClassContainerImpl1map map = null;
  ExtensionClassContainerImpl1();

  @override
  String toString() {
    return 'ExtensionClassContainerImpl1[class_=$class_, links=$links, map=$map, ]';
  }

  ExtensionClassContainerImpl1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new ExtensionClassContainerImpl1links.fromJson(json['_links']);
    map = new ExtensionClassContainerImpl1map.fromJson(json['map']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'map': map
    };
  }

  static List<ExtensionClassContainerImpl1> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExtensionClassContainerImpl1>() : json.map((value) => new ExtensionClassContainerImpl1.fromJson(value)).toList();
  }

  static Map<String, ExtensionClassContainerImpl1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExtensionClassContainerImpl1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExtensionClassContainerImpl1.fromJson(value));
    }
    return map;
  }
}

