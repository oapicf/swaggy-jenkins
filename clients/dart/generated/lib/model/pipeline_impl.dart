//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineImpl {
  /// Returns a new [PipelineImpl] instance.
  PipelineImpl({
    this.class_,
    this.displayName,
    this.estimatedDurationInMillis,
    this.fullName,
    this.latestRun,
    this.name,
    this.organization,
    this.weatherScore,
    this.links,
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
  String? fullName;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PipelineImpllinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineImpl &&
     other.class_ == class_ &&
     other.displayName == displayName &&
     other.estimatedDurationInMillis == estimatedDurationInMillis &&
     other.fullName == fullName &&
     other.latestRun == latestRun &&
     other.name == name &&
     other.organization == organization &&
     other.weatherScore == weatherScore &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (weatherScore == null ? 0 : weatherScore!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'PipelineImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullName=$fullName, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, links=$links]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (estimatedDurationInMillis != null) {
      _json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (fullName != null) {
      _json[r'fullName'] = fullName;
    }
    if (latestRun != null) {
      _json[r'latestRun'] = latestRun;
    }
    if (name != null) {
      _json[r'name'] = name;
    }
    if (organization != null) {
      _json[r'organization'] = organization;
    }
    if (weatherScore != null) {
      _json[r'weatherScore'] = weatherScore;
    }
    if (links != null) {
      _json[r'_links'] = links;
    }
    return _json;
  }

  /// Returns a new [PipelineImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineImpl? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineImpl[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineImpl[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelineImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        latestRun: mapValueOfType<String>(json, r'latestRun'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        weatherScore: mapValueOfType<int>(json, r'weatherScore'),
        links: PipelineImpllinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<PipelineImpl>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineImpl>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineImpl.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineImpl> mapFromJson(dynamic json) {
    final map = <String, PipelineImpl>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineImpl.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineImpl-objects as value to a dart map
  static Map<String, List<PipelineImpl>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineImpl.listFromJson(entry.value, growable: growable,);
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

