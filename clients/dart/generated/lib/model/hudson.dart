//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Hudson {
  /// Returns a new [Hudson] instance.
  Hudson({
    this.class_,
    this.assignedLabels = const [],
    this.mode,
    this.nodeDescription,
    this.nodeName,
    this.numExecutors,
    this.description,
    this.jobs = const [],
    this.primaryView,
    this.quietingDown,
    this.slaveAgentPort,
    this.unlabeledLoad,
    this.useCrumbs,
    this.useSecurity,
    this.views = const [],
  });

  String class_;

  List<HudsonassignedLabels> assignedLabels;

  String mode;

  String nodeDescription;

  String nodeName;

  int numExecutors;

  String description;

  List<FreeStyleProject> jobs;

  AllView primaryView;

  bool quietingDown;

  int slaveAgentPort;

  UnlabeledLoadStatistics unlabeledLoad;

  bool useCrumbs;

  bool useSecurity;

  List<AllView> views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Hudson &&
     other.class_ == class_ &&
     other.assignedLabels == assignedLabels &&
     other.mode == mode &&
     other.nodeDescription == nodeDescription &&
     other.nodeName == nodeName &&
     other.numExecutors == numExecutors &&
     other.description == description &&
     other.jobs == jobs &&
     other.primaryView == primaryView &&
     other.quietingDown == quietingDown &&
     other.slaveAgentPort == slaveAgentPort &&
     other.unlabeledLoad == unlabeledLoad &&
     other.useCrumbs == useCrumbs &&
     other.useSecurity == useSecurity &&
     other.views == views;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (assignedLabels == null ? 0 : assignedLabels.hashCode) +
    (mode == null ? 0 : mode.hashCode) +
    (nodeDescription == null ? 0 : nodeDescription.hashCode) +
    (nodeName == null ? 0 : nodeName.hashCode) +
    (numExecutors == null ? 0 : numExecutors.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (jobs == null ? 0 : jobs.hashCode) +
    (primaryView == null ? 0 : primaryView.hashCode) +
    (quietingDown == null ? 0 : quietingDown.hashCode) +
    (slaveAgentPort == null ? 0 : slaveAgentPort.hashCode) +
    (unlabeledLoad == null ? 0 : unlabeledLoad.hashCode) +
    (useCrumbs == null ? 0 : useCrumbs.hashCode) +
    (useSecurity == null ? 0 : useSecurity.hashCode) +
    (views == null ? 0 : views.hashCode);

  @override
  String toString() => 'Hudson[class_=$class_, assignedLabels=$assignedLabels, mode=$mode, nodeDescription=$nodeDescription, nodeName=$nodeName, numExecutors=$numExecutors, description=$description, jobs=$jobs, primaryView=$primaryView, quietingDown=$quietingDown, slaveAgentPort=$slaveAgentPort, unlabeledLoad=$unlabeledLoad, useCrumbs=$useCrumbs, useSecurity=$useSecurity, views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (assignedLabels != null) {
      json[r'assignedLabels'] = assignedLabels;
    }
    if (mode != null) {
      json[r'mode'] = mode;
    }
    if (nodeDescription != null) {
      json[r'nodeDescription'] = nodeDescription;
    }
    if (nodeName != null) {
      json[r'nodeName'] = nodeName;
    }
    if (numExecutors != null) {
      json[r'numExecutors'] = numExecutors;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (jobs != null) {
      json[r'jobs'] = jobs;
    }
    if (primaryView != null) {
      json[r'primaryView'] = primaryView;
    }
    if (quietingDown != null) {
      json[r'quietingDown'] = quietingDown;
    }
    if (slaveAgentPort != null) {
      json[r'slaveAgentPort'] = slaveAgentPort;
    }
    if (unlabeledLoad != null) {
      json[r'unlabeledLoad'] = unlabeledLoad;
    }
    if (useCrumbs != null) {
      json[r'useCrumbs'] = useCrumbs;
    }
    if (useSecurity != null) {
      json[r'useSecurity'] = useSecurity;
    }
    if (views != null) {
      json[r'views'] = views;
    }
    return json;
  }

  /// Returns a new [Hudson] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Hudson fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Hudson(
        class_: mapValueOfType<String>(json, r'_class'),
        assignedLabels: HudsonassignedLabels.listFromJson(json[r'assignedLabels']),
        mode: mapValueOfType<String>(json, r'mode'),
        nodeDescription: mapValueOfType<String>(json, r'nodeDescription'),
        nodeName: mapValueOfType<String>(json, r'nodeName'),
        numExecutors: mapValueOfType<int>(json, r'numExecutors'),
        description: mapValueOfType<String>(json, r'description'),
        jobs: FreeStyleProject.listFromJson(json[r'jobs']),
        primaryView: AllView.fromJson(json[r'primaryView']),
        quietingDown: mapValueOfType<bool>(json, r'quietingDown'),
        slaveAgentPort: mapValueOfType<int>(json, r'slaveAgentPort'),
        unlabeledLoad: UnlabeledLoadStatistics.fromJson(json[r'unlabeledLoad']),
        useCrumbs: mapValueOfType<bool>(json, r'useCrumbs'),
        useSecurity: mapValueOfType<bool>(json, r'useSecurity'),
        views: AllView.listFromJson(json[r'views']),
      );
    }
    return null;
  }

  static List<Hudson> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Hudson.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Hudson>[];

  static Map<String, Hudson> mapFromJson(dynamic json) {
    final map = <String, Hudson>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Hudson.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Hudson-objects as value to a dart map
  static Map<String, List<Hudson>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Hudson>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Hudson.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

