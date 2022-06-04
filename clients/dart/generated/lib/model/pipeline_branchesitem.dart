//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
  int? estimatedDurationInMillis;

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
  int? weatherScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PipelineBranchesitemlatestRun? latestRun;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PipelineBranchesitempullRequest? pullRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalNumberOfPullRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

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
    (displayName == null ? 0 : displayName!.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (weatherScore == null ? 0 : weatherScore!.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (pullRequest == null ? 0 : pullRequest!.hashCode) +
    (totalNumberOfPullRequests == null ? 0 : totalNumberOfPullRequests!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'PipelineBranchesitem[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, name=$name, weatherScore=$weatherScore, latestRun=$latestRun, organization=$organization, pullRequest=$pullRequest, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (estimatedDurationInMillis != null) {
      _json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (weatherScore != null) {
      _json[r'weatherScore'] = weatherScore;
    }
    if (latestRun != null) {
      _json[r'latestRun'] = latestRun;
    }
    if (organization != null) {
      _json[r'organization'] = organization;
    }
    if (pullRequest != null) {
      _json[r'pullRequest'] = pullRequest;
    }
    if (totalNumberOfPullRequests != null) {
      _json[r'totalNumberOfPullRequests'] = totalNumberOfPullRequests;
    }
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    return _json;
  }

  /// Returns a new [PipelineBranchesitem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineBranchesitem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineBranchesitem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineBranchesitem[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<PipelineBranchesitem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineBranchesitem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineBranchesitem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineBranchesitem> mapFromJson(dynamic json) {
    final map = <String, PipelineBranchesitem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineBranchesitem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineBranchesitem-objects as value to a dart map
  static Map<String, List<PipelineBranchesitem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineBranchesitem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineBranchesitem.listFromJson(entry.value, growable: growable,);
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

