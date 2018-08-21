part of openapi.api;

class ExtensionClassContainerImpl1links {
  
  Link self = null;
  
  String class_ = null;
  ExtensionClassContainerImpl1links();

  @override
  String toString() {
    return 'ExtensionClassContainerImpl1links[self=$self, class_=$class_, ]';
  }

  ExtensionClassContainerImpl1links.fromJson(Map<String, dynamic> json) {
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

  static List<ExtensionClassContainerImpl1links> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExtensionClassContainerImpl1links>() : json.map((value) => new ExtensionClassContainerImpl1links.fromJson(value)).toList();
  }

  static Map<String, ExtensionClassContainerImpl1links> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExtensionClassContainerImpl1links>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExtensionClassContainerImpl1links.fromJson(value));
    }
    return map;
  }
}

