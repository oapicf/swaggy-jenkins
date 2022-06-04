//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pipeline {
  /// Returns a new [Pipeline] instance.
  Pipeline({
    this.class_,
    this.organization,
    this.name,
    this.displayName,
    this.fullName,
    this.weatherScore,
    this.estimatedDurationInMillis,
    this.latestRun,
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
  String? organization;

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
  String? displayName;

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
  int? weatherScore;

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
  PipelinelatestRun? latestRun;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pipeline &&
     other.class_ == class_ &&
     other.organization == organization &&
     other.name == name &&
     other.displayName == displayName &&
     other.fullName == fullName &&
     other.weatherScore == weatherScore &&
     other.estimatedDurationInMillis == estimatedDurationInMillis &&
     other.latestRun == latestRun;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (weatherScore == null ? 0 : weatherScore!.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis!.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode);

  @override
  String toString() => 'Pipeline[class_=$class_, organization=$organization, name=$name, displayName=$displayName, fullName=$fullName, weatherScore=$weatherScore, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (organization != null) {
      _json[r'organization'] = organization;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (fullName != null) {
      _json[r'fullName'] = fullName;
    }
    if (weatherScore != null) {
      _json[r'weatherScore'] = weatherScore;
    }
    if (estimatedDurationInMillis != null) {
      _json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (latestRun != null) {
      _json[r'latestRun'] = latestRun;
    }
    return _json;
  }

  /// Returns a new [Pipeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pipeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pipeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pipeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pipeline(
        class_: mapValueOfType<String>(json, r'_class'),
        organization: mapValueOfType<String>(json, r'organization'),
        name: mapValueOfType<String>(json, r'name'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        weatherScore: mapValueOfType<int>(json, r'weatherScore'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        latestRun: PipelinelatestRun.fromJson(json[r'latestRun']),
      );
    }
    return null;
  }

  static List<Pipeline>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pipeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pipeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pipeline> mapFromJson(dynamic json) {
    final map = <String, Pipeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pipeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pipeline-objects as value to a dart map
  static Map<String, List<Pipeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pipeline>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pipeline.listFromJson(entry.value, growable: growable,);
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

