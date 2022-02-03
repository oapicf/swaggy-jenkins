//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  String name;

  String url;

  String color;

  List<FreeStyleProjectactions> actions;

  String description;

  String displayName;

  String displayNameOrNull;

  String fullDisplayName;

  String fullName;

  bool buildable;

  List<FreeStyleBuild> builds;

  FreeStyleBuild firstBuild;

  List<FreeStyleProjecthealthReport> healthReport;

  bool inQueue;

  bool keepDependencies;

  FreeStyleBuild lastBuild;

  FreeStyleBuild lastCompletedBuild;

  String lastFailedBuild;

  FreeStyleBuild lastStableBuild;

  FreeStyleBuild lastSuccessfulBuild;

  String lastUnstableBuild;

  String lastUnsuccessfulBuild;

  int nextBuildNumber;

  String queueItem;

  bool concurrentBuild;

  NullSCM scm;

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
    (class_ == null ? 0 : class_.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (color == null ? 0 : color.hashCode) +
    (actions == null ? 0 : actions.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (displayNameOrNull == null ? 0 : displayNameOrNull.hashCode) +
    (fullDisplayName == null ? 0 : fullDisplayName.hashCode) +
    (fullName == null ? 0 : fullName.hashCode) +
    (buildable == null ? 0 : buildable.hashCode) +
    (builds == null ? 0 : builds.hashCode) +
    (firstBuild == null ? 0 : firstBuild.hashCode) +
    (healthReport == null ? 0 : healthReport.hashCode) +
    (inQueue == null ? 0 : inQueue.hashCode) +
    (keepDependencies == null ? 0 : keepDependencies.hashCode) +
    (lastBuild == null ? 0 : lastBuild.hashCode) +
    (lastCompletedBuild == null ? 0 : lastCompletedBuild.hashCode) +
    (lastFailedBuild == null ? 0 : lastFailedBuild.hashCode) +
    (lastStableBuild == null ? 0 : lastStableBuild.hashCode) +
    (lastSuccessfulBuild == null ? 0 : lastSuccessfulBuild.hashCode) +
    (lastUnstableBuild == null ? 0 : lastUnstableBuild.hashCode) +
    (lastUnsuccessfulBuild == null ? 0 : lastUnsuccessfulBuild.hashCode) +
    (nextBuildNumber == null ? 0 : nextBuildNumber.hashCode) +
    (queueItem == null ? 0 : queueItem.hashCode) +
    (concurrentBuild == null ? 0 : concurrentBuild.hashCode) +
    (scm == null ? 0 : scm.hashCode);

  @override
  String toString() => 'FreeStyleProject[class_=$class_, name=$name, url=$url, color=$color, actions=$actions, description=$description, displayName=$displayName, displayNameOrNull=$displayNameOrNull, fullDisplayName=$fullDisplayName, fullName=$fullName, buildable=$buildable, builds=$builds, firstBuild=$firstBuild, healthReport=$healthReport, inQueue=$inQueue, keepDependencies=$keepDependencies, lastBuild=$lastBuild, lastCompletedBuild=$lastCompletedBuild, lastFailedBuild=$lastFailedBuild, lastStableBuild=$lastStableBuild, lastSuccessfulBuild=$lastSuccessfulBuild, lastUnstableBuild=$lastUnstableBuild, lastUnsuccessfulBuild=$lastUnsuccessfulBuild, nextBuildNumber=$nextBuildNumber, queueItem=$queueItem, concurrentBuild=$concurrentBuild, scm=$scm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (color != null) {
      json[r'color'] = color;
    }
    if (actions != null) {
      json[r'actions'] = actions;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (displayNameOrNull != null) {
      json[r'displayNameOrNull'] = displayNameOrNull;
    }
    if (fullDisplayName != null) {
      json[r'fullDisplayName'] = fullDisplayName;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    if (buildable != null) {
      json[r'buildable'] = buildable;
    }
    if (builds != null) {
      json[r'builds'] = builds;
    }
    if (firstBuild != null) {
      json[r'firstBuild'] = firstBuild;
    }
    if (healthReport != null) {
      json[r'healthReport'] = healthReport;
    }
    if (inQueue != null) {
      json[r'inQueue'] = inQueue;
    }
    if (keepDependencies != null) {
      json[r'keepDependencies'] = keepDependencies;
    }
    if (lastBuild != null) {
      json[r'lastBuild'] = lastBuild;
    }
    if (lastCompletedBuild != null) {
      json[r'lastCompletedBuild'] = lastCompletedBuild;
    }
    if (lastFailedBuild != null) {
      json[r'lastFailedBuild'] = lastFailedBuild;
    }
    if (lastStableBuild != null) {
      json[r'lastStableBuild'] = lastStableBuild;
    }
    if (lastSuccessfulBuild != null) {
      json[r'lastSuccessfulBuild'] = lastSuccessfulBuild;
    }
    if (lastUnstableBuild != null) {
      json[r'lastUnstableBuild'] = lastUnstableBuild;
    }
    if (lastUnsuccessfulBuild != null) {
      json[r'lastUnsuccessfulBuild'] = lastUnsuccessfulBuild;
    }
    if (nextBuildNumber != null) {
      json[r'nextBuildNumber'] = nextBuildNumber;
    }
    if (queueItem != null) {
      json[r'queueItem'] = queueItem;
    }
    if (concurrentBuild != null) {
      json[r'concurrentBuild'] = concurrentBuild;
    }
    if (scm != null) {
      json[r'scm'] = scm;
    }
    return json;
  }

  /// Returns a new [FreeStyleProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeStyleProject fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FreeStyleProject(
        class_: mapValueOfType<String>(json, r'_class'),
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
        color: mapValueOfType<String>(json, r'color'),
        actions: FreeStyleProjectactions.listFromJson(json[r'actions']),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        displayNameOrNull: mapValueOfType<String>(json, r'displayNameOrNull'),
        fullDisplayName: mapValueOfType<String>(json, r'fullDisplayName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        buildable: mapValueOfType<bool>(json, r'buildable'),
        builds: FreeStyleBuild.listFromJson(json[r'builds']),
        firstBuild: FreeStyleBuild.fromJson(json[r'firstBuild']),
        healthReport: FreeStyleProjecthealthReport.listFromJson(json[r'healthReport']),
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

  static List<FreeStyleProject> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FreeStyleProject.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FreeStyleProject>[];

  static Map<String, FreeStyleProject> mapFromJson(dynamic json) {
    final map = <String, FreeStyleProject>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FreeStyleProject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FreeStyleProject-objects as value to a dart map
  static Map<String, List<FreeStyleProject>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FreeStyleProject>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FreeStyleProject.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

