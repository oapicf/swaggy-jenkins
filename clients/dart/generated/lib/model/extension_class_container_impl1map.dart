part of openapi.api;

class ExtensionClassContainerImpl1map {
  
  ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = null;
  
  ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = null;
  
  String class_ = null;
  ExtensionClassContainerImpl1map();

  @override
  String toString() {
    return 'ExtensionClassContainerImpl1map[ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl=$ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl=$ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, class_=$class_, ]';
  }

  ExtensionClassContainerImpl1map.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = new ExtensionClassImpl.fromJson(json['io.jenkins.blueocean.service.embedded.rest.PipelineImpl']);
    ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = new ExtensionClassImpl.fromJson(json['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'io.jenkins.blueocean.service.embedded.rest.PipelineImpl': ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl,
      'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl': ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl,
      '_class': class_
    };
  }

  static List<ExtensionClassContainerImpl1map> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExtensionClassContainerImpl1map>() : json.map((value) => new ExtensionClassContainerImpl1map.fromJson(value)).toList();
  }

  static Map<String, ExtensionClassContainerImpl1map> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExtensionClassContainerImpl1map>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExtensionClassContainerImpl1map.fromJson(value));
    }
    return map;
  }
}

