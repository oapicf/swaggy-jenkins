//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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
  String? latestRun;

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
  String? organization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weatherScore;

  List<String> branchNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfFailingBranches;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfFailingPullRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfSuccessfulBranches;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfSuccessfulPullRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalNumberOfBranches;

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
  bool operator ==(Object other) => identical(this, other) || other is MultibranchPipeline &&
    other.displayName == displayName &&
    other.estimatedDurationInMillis == estimatedDurationInMillis &&
    other.latestRun == latestRun &&
    other.name == name &&
    other.organization == organization &&
    other.weatherScore == weatherScore &&
    _deepEquality.equals(other.branchNames, branchNames) &&
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
    (displayName == null ? 0 : displayName!.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis!.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (weatherScore == null ? 0 : weatherScore!.hashCode) +
    (branchNames.hashCode) +
    (numberOfFailingBranches == null ? 0 : numberOfFailingBranches!.hashCode) +
    (numberOfFailingPullRequests == null ? 0 : numberOfFailingPullRequests!.hashCode) +
    (numberOfSuccessfulBranches == null ? 0 : numberOfSuccessfulBranches!.hashCode) +
    (numberOfSuccessfulPullRequests == null ? 0 : numberOfSuccessfulPullRequests!.hashCode) +
    (totalNumberOfBranches == null ? 0 : totalNumberOfBranches!.hashCode) +
    (totalNumberOfPullRequests == null ? 0 : totalNumberOfPullRequests!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'MultibranchPipeline[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, branchNames=$branchNames, numberOfFailingBranches=$numberOfFailingBranches, numberOfFailingPullRequests=$numberOfFailingPullRequests, numberOfSuccessfulBranches=$numberOfSuccessfulBranches, numberOfSuccessfulPullRequests=$numberOfSuccessfulPullRequests, totalNumberOfBranches=$totalNumberOfBranches, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = this.estimatedDurationInMillis;
    } else {
      json[r'estimatedDurationInMillis'] = null;
    }
    if (this.latestRun != null) {
      json[r'latestRun'] = this.latestRun;
    } else {
      json[r'latestRun'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.weatherScore != null) {
      json[r'weatherScore'] = this.weatherScore;
    } else {
      json[r'weatherScore'] = null;
    }
      json[r'branchNames'] = this.branchNames;
    if (this.numberOfFailingBranches != null) {
      json[r'numberOfFailingBranches'] = this.numberOfFailingBranches;
    } else {
      json[r'numberOfFailingBranches'] = null;
    }
    if (this.numberOfFailingPullRequests != null) {
      json[r'numberOfFailingPullRequests'] = this.numberOfFailingPullRequests;
    } else {
      json[r'numberOfFailingPullRequests'] = null;
    }
    if (this.numberOfSuccessfulBranches != null) {
      json[r'numberOfSuccessfulBranches'] = this.numberOfSuccessfulBranches;
    } else {
      json[r'numberOfSuccessfulBranches'] = null;
    }
    if (this.numberOfSuccessfulPullRequests != null) {
      json[r'numberOfSuccessfulPullRequests'] = this.numberOfSuccessfulPullRequests;
    } else {
      json[r'numberOfSuccessfulPullRequests'] = null;
    }
    if (this.totalNumberOfBranches != null) {
      json[r'totalNumberOfBranches'] = this.totalNumberOfBranches;
    } else {
      json[r'totalNumberOfBranches'] = null;
    }
    if (this.totalNumberOfPullRequests != null) {
      json[r'totalNumberOfPullRequests'] = this.totalNumberOfPullRequests;
    } else {
      json[r'totalNumberOfPullRequests'] = null;
    }
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    return json;
  }

  /// Returns a new [MultibranchPipeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MultibranchPipeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MultibranchPipeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MultibranchPipeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MultibranchPipeline(
        displayName: mapValueOfType<String>(json, r'displayName'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        latestRun: mapValueOfType<String>(json, r'latestRun'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        weatherScore: mapValueOfType<int>(json, r'weatherScore'),
        branchNames: json[r'branchNames'] is Iterable
            ? (json[r'branchNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
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

  static List<MultibranchPipeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MultibranchPipeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MultibranchPipeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MultibranchPipeline> mapFromJson(dynamic json) {
    final map = <String, MultibranchPipeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MultibranchPipeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MultibranchPipeline-objects as value to a dart map
  static Map<String, List<MultibranchPipeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MultibranchPipeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MultibranchPipeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

