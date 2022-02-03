//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BranchImpl {
  /// Returns a new [BranchImpl] instance.
  BranchImpl({
    this.class_,
    this.displayName,
    this.estimatedDurationInMillis,
    this.fullDisplayName,
    this.fullName,
    this.name,
    this.organization,
    this.parameters = const [],
    this.permissions,
    this.weatherScore,
    this.pullRequest,
    this.links,
    this.latestRun,
  });

  String class_;

  String displayName;

  int estimatedDurationInMillis;

  String fullDisplayName;

  String fullName;

  String name;

  String organization;

  List<StringParameterDefinition> parameters;

  BranchImplpermissions permissions;

  int weatherScore;

  String pullRequest;

  BranchImpllinks links;

  PipelineRunImpl latestRun;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchImpl &&
     other.class_ == class_ &&
     other.displayName == displayName &&
     other.estimatedDurationInMillis == estimatedDurationInMillis &&
     other.fullDisplayName == fullDisplayName &&
     other.fullName == fullName &&
     other.name == name &&
     other.organization == organization &&
     other.parameters == parameters &&
     other.permissions == permissions &&
     other.weatherScore == weatherScore &&
     other.pullRequest == pullRequest &&
     other.links == links &&
     other.latestRun == latestRun;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis.hashCode) +
    (fullDisplayName == null ? 0 : fullDisplayName.hashCode) +
    (fullName == null ? 0 : fullName.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (parameters == null ? 0 : parameters.hashCode) +
    (permissions == null ? 0 : permissions.hashCode) +
    (weatherScore == null ? 0 : weatherScore.hashCode) +
    (pullRequest == null ? 0 : pullRequest.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (latestRun == null ? 0 : latestRun.hashCode);

  @override
  String toString() => 'BranchImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullDisplayName=$fullDisplayName, fullName=$fullName, name=$name, organization=$organization, parameters=$parameters, permissions=$permissions, weatherScore=$weatherScore, pullRequest=$pullRequest, links=$links, latestRun=$latestRun]';

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
    if (fullDisplayName != null) {
      json[r'fullDisplayName'] = fullDisplayName;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (parameters != null) {
      json[r'parameters'] = parameters;
    }
    if (permissions != null) {
      json[r'permissions'] = permissions;
    }
    if (weatherScore != null) {
      json[r'weatherScore'] = weatherScore;
    }
    if (pullRequest != null) {
      json[r'pullRequest'] = pullRequest;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (latestRun != null) {
      json[r'latestRun'] = latestRun;
    }
    return json;
  }

  /// Returns a new [BranchImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BranchImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        fullDisplayName: mapValueOfType<String>(json, r'fullDisplayName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        parameters: StringParameterDefinition.listFromJson(json[r'parameters']),
        permissions: BranchImplpermissions.fromJson(json[r'permissions']),
        weatherScore: mapValueOfType<int>(json, r'weatherScore'),
        pullRequest: mapValueOfType<String>(json, r'pullRequest'),
        links: BranchImpllinks.fromJson(json[r'_links']),
        latestRun: PipelineRunImpl.fromJson(json[r'latestRun']),
      );
    }
    return null;
  }

  static List<BranchImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BranchImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BranchImpl>[];

  static Map<String, BranchImpl> mapFromJson(dynamic json) {
    final map = <String, BranchImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BranchImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BranchImpl-objects as value to a dart map
  static Map<String, List<BranchImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BranchImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BranchImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

