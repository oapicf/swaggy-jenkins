part of openapi.api;

class HudsonMasterComputermonitorData {
  
  SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;
  
  DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;
  
  DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;
  
  String hudsonNodeMonitorsArchitectureMonitor = null;
  
  ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;
  
  ClockDifference hudsonNodeMonitorsClockMonitor = null;
  
  String class_ = null;
  HudsonMasterComputermonitorData();

  @override
  String toString() {
    return 'HudsonMasterComputermonitorData[hudsonNodeMonitorsSwapSpaceMonitor=$hudsonNodeMonitorsSwapSpaceMonitor, hudsonNodeMonitorsTemporarySpaceMonitor=$hudsonNodeMonitorsTemporarySpaceMonitor, hudsonNodeMonitorsDiskSpaceMonitor=$hudsonNodeMonitorsDiskSpaceMonitor, hudsonNodeMonitorsArchitectureMonitor=$hudsonNodeMonitorsArchitectureMonitor, hudsonNodeMonitorsResponseTimeMonitor=$hudsonNodeMonitorsResponseTimeMonitor, hudsonNodeMonitorsClockMonitor=$hudsonNodeMonitorsClockMonitor, class_=$class_, ]';
  }

  HudsonMasterComputermonitorData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hudsonNodeMonitorsSwapSpaceMonitor = new SwapSpaceMonitorMemoryUsage2.fromJson(json['hudson.node_monitors.SwapSpaceMonitor']);
    hudsonNodeMonitorsTemporarySpaceMonitor = new DiskSpaceMonitorDescriptorDiskSpace.fromJson(json['hudson.node_monitors.TemporarySpaceMonitor']);
    hudsonNodeMonitorsDiskSpaceMonitor = new DiskSpaceMonitorDescriptorDiskSpace.fromJson(json['hudson.node_monitors.DiskSpaceMonitor']);
    hudsonNodeMonitorsArchitectureMonitor = json['hudson.node_monitors.ArchitectureMonitor'];
    hudsonNodeMonitorsResponseTimeMonitor = new ResponseTimeMonitorData.fromJson(json['hudson.node_monitors.ResponseTimeMonitor']);
    hudsonNodeMonitorsClockMonitor = new ClockDifference.fromJson(json['hudson.node_monitors.ClockMonitor']);
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'hudson.node_monitors.SwapSpaceMonitor': hudsonNodeMonitorsSwapSpaceMonitor,
      'hudson.node_monitors.TemporarySpaceMonitor': hudsonNodeMonitorsTemporarySpaceMonitor,
      'hudson.node_monitors.DiskSpaceMonitor': hudsonNodeMonitorsDiskSpaceMonitor,
      'hudson.node_monitors.ArchitectureMonitor': hudsonNodeMonitorsArchitectureMonitor,
      'hudson.node_monitors.ResponseTimeMonitor': hudsonNodeMonitorsResponseTimeMonitor,
      'hudson.node_monitors.ClockMonitor': hudsonNodeMonitorsClockMonitor,
      '_class': class_
    };
  }

  static List<HudsonMasterComputermonitorData> listFromJson(List<dynamic> json) {
    return json == null ? new List<HudsonMasterComputermonitorData>() : json.map((value) => new HudsonMasterComputermonitorData.fromJson(value)).toList();
  }

  static Map<String, HudsonMasterComputermonitorData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HudsonMasterComputermonitorData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HudsonMasterComputermonitorData.fromJson(value));
    }
    return map;
  }
}

