//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FreeStyleProject {
  /// Returns a new [FreeStyleProject] instance.
  FreeStyleProject({
    this.class_,
    this.name,
    this.url,
    this.color,
    this.actions = const [],
    this.description,
    this.displayName,
    this.displayNameOrNull,
    this.fullDisplayName,
    this.fullName,
    this.buildable,
    this.builds = const [],
    this.firstBuild,
    this.healthReport = const [],
    this.inQueue,
    this.keepDependencies,
    this.lastBuild,
    this.lastCompletedBuild,
    this.lastFailedBuild,
    this.lastStableBuild,
    this.lastSuccessfulBuild,
    this.lastUnstableBuild,
    this.lastUnsuccessfulBuild,
    this.nextBuildNumber,
    this.queueItem,
    this.concurrentBuild,
    this.scm,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  List<FreeStyleProjectactions> actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayNameOrNull;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullDisplayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? buildable;

  List<FreeStyleBuild> builds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleBuild? firstBuild;

  List<FreeStyleProjecthealthReport> healthReport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inQueue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? keepDependencies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleBuild? lastBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleBuild? lastCompletedBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastFailedBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleBuild? lastStableBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleBuild? lastSuccessfulBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUnstableBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUnsuccessfulBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextBuildNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queueItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? concurrentBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NullSCM? scm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FreeStyleProject &&
     other.class_ == class_ &&
     other.name == name &&
     other.url == url &&
     other.color == color &&
     other.actions == actions &&
     other.description == description &&
     other.displayName == displayName &&
     other.displayNameOrNull == displayNameOrNull &&
     other.fullDisplayName == fullDisplayName &&
     other.fullName == fullName &&
     other.buildable == buildable &&
     other.builds == builds &&
     other.firstBuild == firstBuild &&
     other.healthReport == healthReport &&
     other.inQueue == inQueue &&
     other.keepDependencies == keepDependencies &&
     other.lastBuild == lastBuild &&
     other.lastCompletedBuild == lastCompletedBuild &&
     other.lastFailedBuild == lastFailedBuild &&
     other.lastStableBuild == lastStableBuild &&
     other.lastSuccessfulBuild == lastSuccessfulBuild &&
     other.lastUnstableBuild == lastUnstableBuild &&
     other.lastUnsuccessfulBuild == lastUnsuccessfulBuild &&
     other.nextBuildNumber == nextBuildNumber &&
     other.queueItem == queueItem &&
     other.concurrentBuild == concurrentBuild &&
     other.scm == scm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (actions.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (displayNameOrNull == null ? 0 : displayNameOrNull!.hashCode) +
    (fullDisplayName == null ? 0 : fullDisplayName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (buildable == null ? 0 : buildable!.hashCode) +
    (builds.hashCode) +
    (firstBuild == null ? 0 : firstBuild!.hashCode) +
    (healthReport.hashCode) +
    (inQueue == null ? 0 : inQueue!.hashCode) +
    (keepDependencies == null ? 0 : keepDependencies!.hashCode) +
    (lastBuild == null ? 0 : lastBuild!.hashCode) +
    (lastCompletedBuild == null ? 0 : lastCompletedBuild!.hashCode) +
    (lastFailedBuild == null ? 0 : lastFailedBuild!.hashCode) +
    (lastStableBuild == null ? 0 : lastStableBuild!.hashCode) +
    (lastSuccessfulBuild == null ? 0 : lastSuccessfulBuild!.hashCode) +
    (lastUnstableBuild == null ? 0 : lastUnstableBuild!.hashCode) +
    (lastUnsuccessfulBuild == null ? 0 : lastUnsuccessfulBuild!.hashCode) +
    (nextBuildNumber == null ? 0 : nextBuildNumber!.hashCode) +
    (queueItem == null ? 0 : queueItem!.hashCode) +
    (concurrentBuild == null ? 0 : concurrentBuild!.hashCode) +
    (scm == null ? 0 : scm!.hashCode);

  @override
  String toString() => 'FreeStyleProject[class_=$class_, name=$name, url=$url, color=$color, actions=$actions, description=$description, displayName=$displayName, displayNameOrNull=$displayNameOrNull, fullDisplayName=$fullDisplayName, fullName=$fullName, buildable=$buildable, builds=$builds, firstBuild=$firstBuild, healthReport=$healthReport, inQueue=$inQueue, keepDependencies=$keepDependencies, lastBuild=$lastBuild, lastCompletedBuild=$lastCompletedBuild, lastFailedBuild=$lastFailedBuild, lastStableBuild=$lastStableBuild, lastSuccessfulBuild=$lastSuccessfulBuild, lastUnstableBuild=$lastUnstableBuild, lastUnsuccessfulBuild=$lastUnsuccessfulBuild, nextBuildNumber=$nextBuildNumber, queueItem=$queueItem, concurrentBuild=$concurrentBuild, scm=$scm]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (url != null) {
      _json[r'url'] = url;
    }
    if (color != null) {
      _json[r'color'] = color;
    }
      _json[r'actions'] = actions;
    if (description != null) {
      _json[r'description'] = description;
    }
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (displayNameOrNull != null) {
      _json[r'displayNameOrNull'] = displayNameOrNull;
    }
    if (fullDisplayName != null) {
      _json[r'fullDisplayName'] = fullDisplayName;
    }
    if (fullName != null) {
      _json[r'fullName'] = fullName;
    }
    if (buildable != null) {
      _json[r'buildable'] = buildable;
    }
      _json[r'builds'] = builds;
    if (firstBuild != null) {
      _json[r'firstBuild'] = firstBuild;
    }
      _json[r'healthReport'] = healthReport;
    if (inQueue != null) {
      _json[r'inQueue'] = inQueue;
    }
    if (keepDependencies != null) {
      _json[r'keepDependencies'] = keepDependencies;
    }
    if (lastBuild != null) {
      _json[r'lastBuild'] = lastBuild;
    }
    if (lastCompletedBuild != null) {
      _json[r'lastCompletedBuild'] = lastCompletedBuild;
    }
    if (lastFailedBuild != null) {
      _json[r'lastFailedBuild'] = lastFailedBuild;
    }
    if (lastStableBuild != null) {
      _json[r'lastStableBuild'] = lastStableBuild;
    }
    if (lastSuccessfulBuild != null) {
      _json[r'lastSuccessfulBuild'] = lastSuccessfulBuild;
    }
    if (lastUnstableBuild != null) {
      _json[r'lastUnstableBuild'] = lastUnstableBuild;
    }
    if (lastUnsuccessfulBuild != null) {
      _json[r'lastUnsuccessfulBuild'] = lastUnsuccessfulBuild;
    }
    if (nextBuildNumber != null) {
      _json[r'nextBuildNumber'] = nextBuildNumber;
    }
    if (queueItem != null) {
      _json[r'queueItem'] = queueItem;
    }
    if (concurrentBuild != null) {
      _json[r'concurrentBuild'] = concurrentBuild;
    }
    if (scm != null) {
      _json[r'scm'] = scm;
    }
    return _json;
  }

  /// Returns a new [FreeStyleProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeStyleProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FreeStyleProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FreeStyleProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FreeStyleProject(
        class_: mapValueOfType<String>(json, r'_class'),
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
        color: mapValueOfType<String>(json, r'color'),
        actions: FreeStyleProjectactions.listFromJson(json[r'actions']) ?? const [],
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        displayNameOrNull: mapValueOfType<String>(json, r'displayNameOrNull'),
        fullDisplayName: mapValueOfType<String>(json, r'fullDisplayName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        buildable: mapValueOfType<bool>(json, r'buildable'),
        builds: FreeStyleBuild.listFromJson(json[r'builds']) ?? const [],
        firstBuild: FreeStyleBuild.fromJson(json[r'firstBuild']),
        healthReport: FreeStyleProjecthealthReport.listFromJson(json[r'healthReport']) ?? const [],
        inQueue: mapValueOfType<bool>(json, r'inQueue'),
        keepDependencies: mapValueOfType<bool>(json, r'keepDependencies'),
        lastBuild: FreeStyleBuild.fromJson(json[r'lastBuild']),
        lastCompletedBuild: FreeStyleBuild.fromJson(json[r'lastCompletedBuild']),
        lastFailedBuild: mapValueOfType<String>(json, r'lastFailedBuild'),
        lastStableBuild: FreeStyleBuild.fromJson(json[r'lastStableBuild']),
        lastSuccessfulBuild: FreeStyleBuild.fromJson(json[r'lastSuccessfulBuild']),
        lastUnstableBuild: mapValueOfType<String>(json, r'lastUnstableBuild'),
        lastUnsuccessfulBuild: mapValueOfType<String>(json, r'lastUnsuccessfulBuild'),
        nextBuildNumber: mapValueOfType<int>(json, r'nextBuildNumber'),
        queueItem: mapValueOfType<String>(json, r'queueItem'),
        concurrentBuild: mapValueOfType<bool>(json, r'concurrentBuild'),
        scm: NullSCM.fromJson(json[r'scm']),
      );
    }
    return null;
  }

  static List<FreeStyleProject>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FreeStyleProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FreeStyleProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FreeStyleProject> mapFromJson(dynamic json) {
    final map = <String, FreeStyleProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FreeStyleProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FreeStyleProject-objects as value to a dart map
  static Map<String, List<FreeStyleProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FreeStyleProject>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FreeStyleProject.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

