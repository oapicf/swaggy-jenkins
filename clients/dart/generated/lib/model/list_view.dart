part of openapi.api;

class ListView {
  
  String class_ = null;
  
  String description = null;
  
  List<FreeStyleProject> jobs = [];
  
  String name = null;
  
  String url = null;
  ListView();

  @override
  String toString() {
    return 'ListView[class_=$class_, description=$description, jobs=$jobs, name=$name, url=$url, ]';
  }

  ListView.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    description = json['description'];
    jobs = FreeStyleProject.listFromJson(json['jobs']);
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'description': description,
      'jobs': jobs,
      'name': name,
      'url': url
    };
  }

  static List<ListView> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListView>() : json.map((value) => new ListView.fromJson(value)).toList();
  }

  static Map<String, ListView> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListView>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListView.fromJson(value));
    }
    return map;
  }
}

