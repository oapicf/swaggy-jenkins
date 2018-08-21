part of openapi.api;

class SwapSpaceMonitorMemoryUsage2 {
  
  String class_ = null;
  
  int availablePhysicalMemory = null;
  
  int availableSwapSpace = null;
  
  int totalPhysicalMemory = null;
  
  int totalSwapSpace = null;
  SwapSpaceMonitorMemoryUsage2();

  @override
  String toString() {
    return 'SwapSpaceMonitorMemoryUsage2[class_=$class_, availablePhysicalMemory=$availablePhysicalMemory, availableSwapSpace=$availableSwapSpace, totalPhysicalMemory=$totalPhysicalMemory, totalSwapSpace=$totalSwapSpace, ]';
  }

  SwapSpaceMonitorMemoryUsage2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    availablePhysicalMemory = json['availablePhysicalMemory'];
    availableSwapSpace = json['availableSwapSpace'];
    totalPhysicalMemory = json['totalPhysicalMemory'];
    totalSwapSpace = json['totalSwapSpace'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'availablePhysicalMemory': availablePhysicalMemory,
      'availableSwapSpace': availableSwapSpace,
      'totalPhysicalMemory': totalPhysicalMemory,
      'totalSwapSpace': totalSwapSpace
    };
  }

  static List<SwapSpaceMonitorMemoryUsage2> listFromJson(List<dynamic> json) {
    return json == null ? new List<SwapSpaceMonitorMemoryUsage2>() : json.map((value) => new SwapSpaceMonitorMemoryUsage2.fromJson(value)).toList();
  }

  static Map<String, SwapSpaceMonitorMemoryUsage2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SwapSpaceMonitorMemoryUsage2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SwapSpaceMonitorMemoryUsage2.fromJson(value));
    }
    return map;
  }
}

