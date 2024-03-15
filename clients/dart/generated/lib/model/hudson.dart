//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  List<HudsonassignedLabels> assignedLabels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numExecutors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<FreeStyleProject> jobs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AllView? primaryView;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? quietingDown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slaveAgentPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UnlabeledLoadStatistics? unlabeledLoad;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useCrumbs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useSecurity;

  List<AllView> views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Hudson &&
    other.class_ == class_ &&
    _deepEquality.equals(other.assignedLabels, assignedLabels) &&
    other.mode == mode &&
    other.nodeDescription == nodeDescription &&
    other.nodeName == nodeName &&
    other.numExecutors == numExecutors &&
    other.description == description &&
    _deepEquality.equals(other.jobs, jobs) &&
    other.primaryView == primaryView &&
    other.quietingDown == quietingDown &&
    other.slaveAgentPort == slaveAgentPort &&
    other.unlabeledLoad == unlabeledLoad &&
    other.useCrumbs == useCrumbs &&
    other.useSecurity == useSecurity &&
    _deepEquality.equals(other.views, views);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (assignedLabels.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (nodeDescription == null ? 0 : nodeDescription!.hashCode) +
    (nodeName == null ? 0 : nodeName!.hashCode) +
    (numExecutors == null ? 0 : numExecutors!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (jobs.hashCode) +
    (primaryView == null ? 0 : primaryView!.hashCode) +
    (quietingDown == null ? 0 : quietingDown!.hashCode) +
    (slaveAgentPort == null ? 0 : slaveAgentPort!.hashCode) +
    (unlabeledLoad == null ? 0 : unlabeledLoad!.hashCode) +
    (useCrumbs == null ? 0 : useCrumbs!.hashCode) +
    (useSecurity == null ? 0 : useSecurity!.hashCode) +
    (views.hashCode);

  @override
  String toString() => 'Hudson[class_=$class_, assignedLabels=$assignedLabels, mode=$mode, nodeDescription=$nodeDescription, nodeName=$nodeName, numExecutors=$numExecutors, description=$description, jobs=$jobs, primaryView=$primaryView, quietingDown=$quietingDown, slaveAgentPort=$slaveAgentPort, unlabeledLoad=$unlabeledLoad, useCrumbs=$useCrumbs, useSecurity=$useSecurity, views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
      json[r'assignedLabels'] = this.assignedLabels;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.nodeDescription != null) {
      json[r'nodeDescription'] = this.nodeDescription;
    } else {
      json[r'nodeDescription'] = null;
    }
    if (this.nodeName != null) {
      json[r'nodeName'] = this.nodeName;
    } else {
      json[r'nodeName'] = null;
    }
    if (this.numExecutors != null) {
      json[r'numExecutors'] = this.numExecutors;
    } else {
      json[r'numExecutors'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'jobs'] = this.jobs;
    if (this.primaryView != null) {
      json[r'primaryView'] = this.primaryView;
    } else {
      json[r'primaryView'] = null;
    }
    if (this.quietingDown != null) {
      json[r'quietingDown'] = this.quietingDown;
    } else {
      json[r'quietingDown'] = null;
    }
    if (this.slaveAgentPort != null) {
      json[r'slaveAgentPort'] = this.slaveAgentPort;
    } else {
      json[r'slaveAgentPort'] = null;
    }
    if (this.unlabeledLoad != null) {
      json[r'unlabeledLoad'] = this.unlabeledLoad;
    } else {
      json[r'unlabeledLoad'] = null;
    }
    if (this.useCrumbs != null) {
      json[r'useCrumbs'] = this.useCrumbs;
    } else {
      json[r'useCrumbs'] = null;
    }
    if (this.useSecurity != null) {
      json[r'useSecurity'] = this.useSecurity;
    } else {
      json[r'useSecurity'] = null;
    }
      json[r'views'] = this.views;
    return json;
  }

  /// Returns a new [Hudson] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Hudson? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Hudson[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Hudson[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<Hudson> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Hudson>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Hudson.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Hudson> mapFromJson(dynamic json) {
    final map = <String, Hudson>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Hudson.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Hudson-objects as value to a dart map
  static Map<String, List<Hudson>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Hudson>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Hudson.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

