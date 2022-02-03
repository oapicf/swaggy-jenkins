//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineBranchesitem {
  /// Returns a new [PipelineBranchesitem] instance.
  PipelineBranchesitem({
    this.displayName,
    this.estimatedDurationInMillis,
    this.name,
    this.weatherScore,
    this.latestRun,
    this.organization,
    this.pullRequest,
    this.totalNumberOfPullRequests,
    this.class_,
  });

  String displayName;

  int estimatedDurationInMillis;

  String name;

  int weatherScore;

  PipelineBranchesitemlatestRun latestRun;

  String organization;

  PipelineBranchesitempullRequest pullRequest;

  int totalNumberOfPullRequests;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineBranchesitem &&
     other.displayName == displayName &&
     other.estimatedDurationInMillis == estimatedDurationInMillis &&
     other.name == name &&
     other.weatherScore == weatherScore &&
     other.latestRun == latestRun &&
     other.organization == organization &&
     other.pullRequest == pullRequest &&
     other.totalNumberOfPullRequests == totalNumberOfPullRequests &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (weatherScore == null ? 0 : weatherScore.hashCode) +
    (latestRun == null ? 0 : latestRun.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (pullRequest == null ? 0 : pullRequest.hashCode) +
    (totalNumberOfPullRequests == null ? 0 : totalNumberOfPullRequests.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineBranchesitem[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, name=$name, weatherScore=$weatherScore, latestRun=$latestRun, organization=$organization, pullRequest=$pullRequest, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (weatherScore != null) {
      json[r'weatherScore'] = weatherScore;
    }
    if (latestRun != null) {
      json[r'latestRun'] = latestRun;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (pullRequest != null) {
      json[r'pullRequest'] = pullRequest;
    }
    if (totalNumberOfPullRequests != null) {
      json[r'totalNumberOfPullRequests'] = totalNumberOfPullRequests;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineBranchesitem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineBranchesitem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineBranchesitem(
        displayName: mapValueOfType<String>(json, r'displayName'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        name: mapValueOfType<String>(json, r'name'),
        weatherScore: mapValueOfType<int>(json, r'weatherScore'),
        latestRun: PipelineBranchesitemlatestRun.fromJson(json[r'latestRun']),
        organization: mapValueOfType<String>(json, r'organization'),
        pullRequest: PipelineBranchesitempullRequest.fromJson(json[r'pullRequest']),
        totalNumberOfPullRequests: mapValueOfType<int>(json, r'totalNumberOfPullRequests'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineBranchesitem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineBranchesitem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineBranchesitem>[];

  static Map<String, PipelineBranchesitem> mapFromJson(dynamic json) {
    final map = <String, PipelineBranchesitem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineBranchesitem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineBranchesitem-objects as value to a dart map
  static Map<String, List<PipelineBranchesitem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineBranchesitem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineBranchesitem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

