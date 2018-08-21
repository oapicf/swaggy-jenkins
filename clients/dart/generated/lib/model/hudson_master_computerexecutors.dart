part of openapi.api;

class HudsonMasterComputerexecutors {
  
  FreeStyleBuild currentExecutable = null;
  
  bool idle = null;
  
  bool likelyStuck = null;
  
  int number = null;
  
  int progress = null;
  
  String class_ = null;
  HudsonMasterComputerexecutors();

  @override
  String toString() {
    return 'HudsonMasterComputerexecutors[currentExecutable=$currentExecutable, idle=$idle, likelyStuck=$likelyStuck, number=$number, progress=$progress, class_=$class_, ]';
  }

  HudsonMasterComputerexecutors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currentExecutable = new FreeStyleBuild.fromJson(json['currentExecutable']);
    idle = json['idle'];
    likelyStuck = json['likelyStuck'];
    number = json['number'];
    progress = json['progress'];
    class_ = json['_class'];
  }

  Map<String, dynamic> toJson() {
    return {
      'currentExecutable': currentExecutable,
      'idle': idle,
      'likelyStuck': likelyStuck,
      'number': number,
      'progress': progress,
      '_class': class_
    };
  }

  static List<HudsonMasterComputerexecutors> listFromJson(List<dynamic> json) {
    return json == null ? new List<HudsonMasterComputerexecutors>() : json.map((value) => new HudsonMasterComputerexecutors.fromJson(value)).toList();
  }

  static Map<String, HudsonMasterComputerexecutors> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HudsonMasterComputerexecutors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HudsonMasterComputerexecutors.fromJson(value));
    }
    return map;
  }
}

