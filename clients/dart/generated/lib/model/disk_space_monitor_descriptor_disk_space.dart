part of openapi.api;

class DiskSpaceMonitorDescriptorDiskSpace {
  
  String class_ = null;
  
  int timestamp = null;
  
  String path = null;
  
  int size = null;
  DiskSpaceMonitorDescriptorDiskSpace();

  @override
  String toString() {
    return 'DiskSpaceMonitorDescriptorDiskSpace[class_=$class_, timestamp=$timestamp, path=$path, size=$size, ]';
  }

  DiskSpaceMonitorDescriptorDiskSpace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    timestamp = json['timestamp'];
    path = json['path'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'timestamp': timestamp,
      'path': path,
      'size': size
    };
  }

  static List<DiskSpaceMonitorDescriptorDiskSpace> listFromJson(List<dynamic> json) {
    return json == null ? new List<DiskSpaceMonitorDescriptorDiskSpace>() : json.map((value) => new DiskSpaceMonitorDescriptorDiskSpace.fromJson(value)).toList();
  }

  static Map<String, DiskSpaceMonitorDescriptorDiskSpace> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DiskSpaceMonitorDescriptorDiskSpace>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DiskSpaceMonitorDescriptorDiskSpace.fromJson(value));
    }
    return map;
  }
}

