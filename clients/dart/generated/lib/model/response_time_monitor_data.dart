part of openapi.api;

class ResponseTimeMonitorData {
  
  String class_ = null;
  
  int timestamp = null;
  
  int average = null;
  ResponseTimeMonitorData();

  @override
  String toString() {
    return 'ResponseTimeMonitorData[class_=$class_, timestamp=$timestamp, average=$average, ]';
  }

  ResponseTimeMonitorData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    timestamp = json['timestamp'];
    average = json['average'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'timestamp': timestamp,
      'average': average
    };
  }

  static List<ResponseTimeMonitorData> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMonitorData>() : json.map((value) => new ResponseTimeMonitorData.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMonitorData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseTimeMonitorData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseTimeMonitorData.fromJson(value));
    }
    return map;
  }
}

