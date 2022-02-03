//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MultibranchPipeline {
  /// Returns a new [MultibranchPipeline] instance.
  MultibranchPipeline({
    this.displayName,
    this.estimatedDurationInMillis,
    this.latestRun,
    this.name,
    this.organization,
    this.weatherScore,
    this.branchNames = const [],
    this.numberOfFailingBranches,
    this.numberOfFailingPullRequests,
    this.numberOfSuccessfulBranches,
    this.numberOfSuccessfulPullRequests,
    this.totalNumberOfBranches,
    this.totalNumberOfPullRequests,
    this.class_,
  });

  String displayName;

  int estimatedDurationInMillis;

  String latestRun;

  String name;

  String organization;

  int weatherScore;

  List<String> branchNames;

  int numberOfFailingBranches;

  int numberOfFailingPullRequests;

  int numberOfSuccessfulBranches;

  int numberOfSuccessfulPullRequests;

  int totalNumberOfBranches;

  int totalNumberOfPullRequests;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MultibranchPipeline &&
     other.displayName == displayName &&
     other.estimatedDurationInMillis == estimatedDurationInMillis &&
     other.latestRun == latestRun &&
     other.name == name &&
     other.organization == organization &&
     other.weatherScore == weatherScore &&
     other.branchNames == branchNames &&
     other.numberOfFailingBranches == numberOfFailingBranches &&
     other.numberOfFailingPullRequests == numberOfFailingPullRequests &&
     other.numberOfSuccessfulBranches == numberOfSuccessfulBranches &&
     other.numberOfSuccessfulPullRequests == numberOfSuccessfulPullRequests &&
     other.totalNumberOfBranches == totalNumberOfBranches &&
     other.totalNumberOfPullRequests == totalNumberOfPullRequests &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis.hashCode) +
    (latestRun == null ? 0 : latestRun.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (weatherScore == null ? 0 : weatherScore.hashCode) +
    (branchNames == null ? 0 : branchNames.hashCode) +
    (numberOfFailingBranches == null ? 0 : numberOfFailingBranches.hashCode) +
    (numberOfFailingPullRequests == null ? 0 : numberOfFailingPullRequests.hashCode) +
    (numberOfSuccessfulBranches == null ? 0 : numberOfSuccessfulBranches.hashCode) +
    (numberOfSuccessfulPullRequests == null ? 0 : numberOfSuccessfulPullRequests.hashCode) +
    (totalNumberOfBranches == null ? 0 : totalNumberOfBranches.hashCode) +
    (totalNumberOfPullRequests == null ? 0 : totalNumberOfPullRequests.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'MultibranchPipeline[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, branchNames=$branchNames, numberOfFailingBranches=$numberOfFailingBranches, numberOfFailingPullRequests=$numberOfFailingPullRequests, numberOfSuccessfulBranches=$numberOfSuccessfulBranches, numberOfSuccessfulPullRequests=$numberOfSuccessfulPullRequests, totalNumberOfBranches=$totalNumberOfBranches, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (latestRun != null) {
      json[r'latestRun'] = latestRun;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (weatherScore != null) {
      json[r'weatherScore'] = weatherScore;
    }
    if (branchNames != null) {
      json[r'branchNames'] = branchNames;
    }
    if (numberOfFailingBranches != null) {
      json[r'numberOfFailingBranches'] = numberOfFailingBranches;
    }
    if (numberOfFailingPullRequests != null) {
      json[r'numberOfFailingPullRequests'] = numberOfFailingPullRequests;
    }
    if (numberOfSuccessfulBranches != null) {
      json[r'numberOfSuccessfulBranches'] = numberOfSuccessfulBranches;
    }
    if (numberOfSuccessfulPullRequests != null) {
      json[r'numberOfSuccessfulPullRequests'] = numberOfSuccessfulPullRequests;
    }
    if (totalNumberOfBranches != null) {
      json[r'totalNumberOfBranches'] = totalNumberOfBranches;
    }
    if (totalNumberOfPullRequests != null) {
      json[r'totalNumberOfPullRequests'] = totalNumberOfPullRequests;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [MultibranchPipeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MultibranchPipeline fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MultibranchPipeline(
        displayName: mapValueOfType<String>(json, r'displayName'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        latestRun: mapValueOfType<String>(json, r'latestRun'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        weatherScore: mapValueOfType<int>(json, r'weatherScore'),
        branchNames: json[r'branchNames'] is List
          ? (json[r'branchNames'] as List).cast<String>()
          : null,
        numberOfFailingBranches: mapValueOfType<int>(json, r'numberOfFailingBranches'),
        numberOfFailingPullRequests: mapValueOfType<int>(json, r'numberOfFailingPullRequests'),
        numberOfSuccessfulBranches: mapValueOfType<int>(json, r'numberOfSuccessfulBranches'),
        numberOfSuccessfulPullRequests: mapValueOfType<int>(json, r'numberOfSuccessfulPullRequests'),
        totalNumberOfBranches: mapValueOfType<int>(json, r'totalNumberOfBranches'),
        totalNumberOfPullRequests: mapValueOfType<int>(json, r'totalNumberOfPullRequests'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<MultibranchPipeline> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MultibranchPipeline.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MultibranchPipeline>[];

  static Map<String, MultibranchPipeline> mapFromJson(dynamic json) {
    final map = <String, MultibranchPipeline>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MultibranchPipeline.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MultibranchPipeline-objects as value to a dart map
  static Map<String, List<MultibranchPipeline>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MultibranchPipeline>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MultibranchPipeline.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

