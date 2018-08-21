part of openapi.api;

class ComputerSet {
  
  String class_ = null;
  
  int busyExecutors = null;
  
  List<HudsonMasterComputer> computer = [];
  
  String displayName = null;
  
  int totalExecutors = null;
  ComputerSet();

  @override
  String toString() {
    return 'ComputerSet[class_=$class_, busyExecutors=$busyExecutors, computer=$computer, displayName=$displayName, totalExecutors=$totalExecutors, ]';
  }

  ComputerSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    class_ = json['_class'];
    busyExecutors = json['busyExecutors'];
    computer = HudsonMasterComputer.listFromJson(json['computer']);
    displayName = json['displayName'];
    totalExecutors = json['totalExecutors'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_class': class_,
      'busyExecutors': busyExecutors,
      'computer': computer,
      'displayName': displayName,
      'totalExecutors': totalExecutors
    };
  }

  static List<ComputerSet> listFromJson(List<dynamic> json) {
    return json == null ? new List<ComputerSet>() : json.map((value) => new ComputerSet.fromJson(value)).toList();
  }

  static Map<String, ComputerSet> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ComputerSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ComputerSet.fromJson(value));
    }
    return map;
  }
}

