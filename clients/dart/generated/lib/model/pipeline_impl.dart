//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  String displayName;

  int estimatedDurationInMillis;

  String fullName;

  String latestRun;

  String name;

  String organization;

  int weatherScore;

  PipelineImpllinks links;

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
    (class_ == null ? 0 : class_.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis.hashCode) +
    (fullName == null ? 0 : fullName.hashCode) +
    (latestRun == null ? 0 : latestRun.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (weatherScore == null ? 0 : weatherScore.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'PipelineImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullName=$fullName, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
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
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [PipelineImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<PipelineImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineImpl>[];

  static Map<String, PipelineImpl> mapFromJson(dynamic json) {
    final map = <String, PipelineImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineImpl-objects as value to a dart map
  static Map<String, List<PipelineImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

