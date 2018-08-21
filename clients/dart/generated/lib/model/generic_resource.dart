part of openapi.api;

class GenericResource {
  
  String class_ = null;
  
  String displayName = null;
  
  int durationInMillis = null;
  
  String id = null;
  
  String result = null;
  
  String startTime = null;
  GenericResource();

  @override
  String toString() {
    return 'GenericResource[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, result=$result, startTime=$startTime, ]';
  }

  GenericResource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    displayName = json['displayName'];
    durationInMillis = json['durationInMillis'];
    id = json['id'];
    result = json['result'];
    startTime = json['startTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'displayName': displayName,
      'durationInMillis': durationInMillis,
      'id': id,
      'result': result,
      'startTime': startTime
    };
  }

  static List<GenericResource> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenericResource>() : json.map((value) => new GenericResource.fromJson(value)).toList();
  }

  static Map<String, GenericResource> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenericResource>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenericResource.fromJson(value));
    }
    return map;
  }
}

