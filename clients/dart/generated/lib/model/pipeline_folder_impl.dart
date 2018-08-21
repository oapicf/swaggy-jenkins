part of openapi.api;

class PipelineFolderImpl {
  
  String class_ = null;
  
  String displayName = null;
  
  String fullName = null;
  
  String name = null;
  
  String organization = null;
  
  int numberOfFolders = null;
  
  int numberOfPipelines = null;
  PipelineFolderImpl();

  @override
  String toString() {
    return 'PipelineFolderImpl[class_=$class_, displayName=$displayName, fullName=$fullName, name=$name, organization=$organization, numberOfFolders=$numberOfFolders, numberOfPipelines=$numberOfPipelines, ]';
  }

  PipelineFolderImpl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    displayName = json['displayName'];
    fullName = json['fullName'];
    name = json['name'];
    organization = json['organization'];
    numberOfFolders = json['numberOfFolders'];
    numberOfPipelines = json['numberOfPipelines'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'displayName': displayName,
      'fullName': fullName,
      'name': name,
      'organization': organization,
      'numberOfFolders': numberOfFolders,
      'numberOfPipelines': numberOfPipelines
    };
  }

  static List<PipelineFolderImpl> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineFolderImpl>() : json.map((value) => new PipelineFolderImpl.fromJson(value)).toList();
  }

  static Map<String, PipelineFolderImpl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineFolderImpl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineFolderImpl.fromJson(value));
    }
    return map;
  }
}

