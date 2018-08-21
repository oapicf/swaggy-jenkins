part of openapi.api;

class PipelineRunartifacts {
  
  String name = null;
  
  int size = null;
  
  String url = null;
  
  String class_ = null;
  PipelineRunartifacts();

  @override
  String toString() {
    return 'PipelineRunartifacts[name=$name, size=$size, url=$url, class_=$class_, ]';
  }

  PipelineRunartifacts.fromJson(Map<String, dynamic> json) {
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

  static List<PipelineRunartifacts> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineRunartifacts>() : json.map((value) => new PipelineRunartifacts.fromJson(value)).toList();
  }

  static Map<String, PipelineRunartifacts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineRunartifacts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineRunartifacts.fromJson(value));
    }
    return map;
  }
}

