part of openapi.api;

class Hudson {
  
  String class_ = null;
  
  List<HudsonassignedLabels> assignedLabels = [];
  
  String mode = null;
  
  String nodeDescription = null;
  
  String nodeName = null;
  
  int numExecutors = null;
  
  String description = null;
  
  List<FreeStyleProject> jobs = [];
  
  AllView primaryView = null;
  
  bool quietingDown = null;
  
  int slaveAgentPort = null;
  
  UnlabeledLoadStatistics unlabeledLoad = null;
  
  bool useCrumbs = null;
  
  bool useSecurity = null;
  
  List<AllView> views = [];
  Hudson();

  @override
  String toString() {
    return 'Hudson[class_=$class_, assignedLabels=$assignedLabels, mode=$mode, nodeDescription=$nodeDescription, nodeName=$nodeName, numExecutors=$numExecutors, description=$description, jobs=$jobs, primaryView=$primaryView, quietingDown=$quietingDown, slaveAgentPort=$slaveAgentPort, unlabeledLoad=$unlabeledLoad, useCrumbs=$useCrumbs, useSecurity=$useSecurity, views=$views, ]';
  }

  Hudson.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    assignedLabels = HudsonassignedLabels.listFromJson(json['assignedLabels']);
    mode = json['mode'];
    nodeDescription = json['nodeDescription'];
    nodeName = json['nodeName'];
    numExecutors = json['numExecutors'];
    description = json['description'];
    jobs = FreeStyleProject.listFromJson(json['jobs']);
    primaryView = new AllView.fromJson(json['primaryView']);
    quietingDown = json['quietingDown'];
    slaveAgentPort = json['slaveAgentPort'];
    unlabeledLoad = new UnlabeledLoadStatistics.fromJson(json['unlabeledLoad']);
    useCrumbs = json['useCrumbs'];
    useSecurity = json['useSecurity'];
    views = AllView.listFromJson(json['views']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'assignedLabels': assignedLabels,
      'mode': mode,
      'nodeDescription': nodeDescription,
      'nodeName': nodeName,
      'numExecutors': numExecutors,
      'description': description,
      'jobs': jobs,
      'primaryView': primaryView,
      'quietingDown': quietingDown,
      'slaveAgentPort': slaveAgentPort,
      'unlabeledLoad': unlabeledLoad,
      'useCrumbs': useCrumbs,
      'useSecurity': useSecurity,
      'views': views
    };
  }

  static List<Hudson> listFromJson(List<dynamic> json) {
    return json == null ? new List<Hudson>() : json.map((value) => new Hudson.fromJson(value)).toList();
  }

  static Map<String, Hudson> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Hudson>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Hudson.fromJson(value));
    }
    return map;
  }
}

