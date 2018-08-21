part of openapi.api;

class HudsonMasterComputer {
  
  String class_ = null;
  
  String displayName = null;
  
  List<HudsonMasterComputerexecutors> executors = [];
  
  String icon = null;
  
  String iconClassName = null;
  
  bool idle = null;
  
  bool jnlpAgent = null;
  
  bool launchSupported = null;
  
  Label1 loadStatistics = null;
  
  bool manualLaunchAllowed = null;
  
  HudsonMasterComputermonitorData monitorData = null;
  
  int numExecutors = null;
  
  bool offline = null;
  
  String offlineCause = null;
  
  String offlineCauseReason = null;
  
  bool temporarilyOffline = null;
  HudsonMasterComputer();

  @override
  String toString() {
    return 'HudsonMasterComputer[class_=$class_, displayName=$displayName, executors=$executors, icon=$icon, iconClassName=$iconClassName, idle=$idle, jnlpAgent=$jnlpAgent, launchSupported=$launchSupported, loadStatistics=$loadStatistics, manualLaunchAllowed=$manualLaunchAllowed, monitorData=$monitorData, numExecutors=$numExecutors, offline=$offline, offlineCause=$offlineCause, offlineCauseReason=$offlineCauseReason, temporarilyOffline=$temporarilyOffline, ]';
  }

  HudsonMasterComputer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    displayName = json['displayName'];
    executors = HudsonMasterComputerexecutors.listFromJson(json['executors']);
    icon = json['icon'];
    iconClassName = json['iconClassName'];
    idle = json['idle'];
    jnlpAgent = json['jnlpAgent'];
    launchSupported = json['launchSupported'];
    loadStatistics = new Label1.fromJson(json['loadStatistics']);
    manualLaunchAllowed = json['manualLaunchAllowed'];
    monitorData = new HudsonMasterComputermonitorData.fromJson(json['monitorData']);
    numExecutors = json['numExecutors'];
    offline = json['offline'];
    offlineCause = json['offlineCause'];
    offlineCauseReason = json['offlineCauseReason'];
    temporarilyOffline = json['temporarilyOffline'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'displayName': displayName,
      'executors': executors,
      'icon': icon,
      'iconClassName': iconClassName,
      'idle': idle,
      'jnlpAgent': jnlpAgent,
      'launchSupported': launchSupported,
      'loadStatistics': loadStatistics,
      'manualLaunchAllowed': manualLaunchAllowed,
      'monitorData': monitorData,
      'numExecutors': numExecutors,
      'offline': offline,
      'offlineCause': offlineCause,
      'offlineCauseReason': offlineCauseReason,
      'temporarilyOffline': temporarilyOffline
    };
  }

  static List<HudsonMasterComputer> listFromJson(List<dynamic> json) {
    return json == null ? new List<HudsonMasterComputer>() : json.map((value) => new HudsonMasterComputer.fromJson(value)).toList();
  }

  static Map<String, HudsonMasterComputer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HudsonMasterComputer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HudsonMasterComputer.fromJson(value));
    }
    return map;
  }
}

