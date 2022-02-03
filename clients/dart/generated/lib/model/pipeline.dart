//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  String organization;

  String name;

  String displayName;

  String fullName;

  int weatherScore;

  int estimatedDurationInMillis;

  PipelinelatestRun latestRun;

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
    (class_ == null ? 0 : class_.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (fullName == null ? 0 : fullName.hashCode) +
    (weatherScore == null ? 0 : weatherScore.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis.hashCode) +
    (latestRun == null ? 0 : latestRun.hashCode);

  @override
  String toString() => 'Pipeline[class_=$class_, organization=$organization, name=$name, displayName=$displayName, fullName=$fullName, weatherScore=$weatherScore, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    if (weatherScore != null) {
      json[r'weatherScore'] = weatherScore;
    }
    if (estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (latestRun != null) {
      json[r'latestRun'] = latestRun;
    }
    return json;
  }

  /// Returns a new [Pipeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pipeline fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<Pipeline> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Pipeline.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Pipeline>[];

  static Map<String, Pipeline> mapFromJson(dynamic json) {
    final map = <String, Pipeline>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Pipeline.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Pipeline-objects as value to a dart map
  static Map<String, List<Pipeline>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Pipeline>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Pipeline.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

