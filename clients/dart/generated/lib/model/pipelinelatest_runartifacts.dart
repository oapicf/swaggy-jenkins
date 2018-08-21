part of openapi.api;

class PipelinelatestRunartifacts {
  
  String name = null;
  
  int size = null;
  
  String url = null;
  
  String class_ = null;
  PipelinelatestRunartifacts();

  @override
  String toString() {
    return 'PipelinelatestRunartifacts[name=$name, size=$size, url=$url, class_=$class_, ]';
  }

  PipelinelatestRunartifacts.fromJson(Map<String, dynamic> json) {
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

  static List<PipelinelatestRunartifacts> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelinelatestRunartifacts>() : json.map((value) => new PipelinelatestRunartifacts.fromJson(value)).toList();
  }

  static Map<String, PipelinelatestRunartifacts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelinelatestRunartifacts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelinelatestRunartifacts.fromJson(value));
    }
    return map;
  }
}

