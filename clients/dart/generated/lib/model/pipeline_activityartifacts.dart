part of openapi.api;

class PipelineActivityartifacts {
  
  String name = null;
  
  int size = null;
  
  String url = null;
  
  String class_ = null;
  PipelineActivityartifacts();

  @override
  String toString() {
    return 'PipelineActivityartifacts[name=$name, size=$size, url=$url, class_=$class_, ]';
  }

  PipelineActivityartifacts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    size = json['size'];
    url = json['url'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'size': size,
      'url': url,
      '_class': class_
    };
  }

  static List<PipelineActivityartifacts> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineActivityartifacts>() : json.map((value) => new PipelineActivityartifacts.fromJson(value)).toList();
  }

  static Map<String, PipelineActivityartifacts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineActivityartifacts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineActivityartifacts.fromJson(value));
    }
    return map;
  }
}

