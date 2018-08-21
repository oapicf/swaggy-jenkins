part of openapi.api;

class GithubScm {
  
  String class_ = null;
  
  GithubScmlinks links = null;
  
  String credentialId = null;
  
  String id = null;
  
  String uri = null;
  GithubScm();

  @override
  String toString() {
    return 'GithubScm[class_=$class_, links=$links, credentialId=$credentialId, id=$id, uri=$uri, ]';
  }

  GithubScm.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    links = new GithubScmlinks.fromJson(json['_links']);
    credentialId = json['credentialId'];
    id = json['id'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      '_links': links,
      'credentialId': credentialId,
      'id': id,
      'uri': uri
    };
  }

  static List<GithubScm> listFromJson(List<dynamic> json) {
    return json == null ? new List<GithubScm>() : json.map((value) => new GithubScm.fromJson(value)).toList();
  }

  static Map<String, GithubScm> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GithubScm>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GithubScm.fromJson(value));
    }
    return map;
  }
}

