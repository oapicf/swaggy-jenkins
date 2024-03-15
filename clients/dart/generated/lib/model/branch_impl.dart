//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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
  String? fullDisplayName;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  List<StringParameterDefinition> parameters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BranchImplpermissions? permissions;

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
  String? pullRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BranchImpllinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PipelineRunImpl? latestRun;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchImpl &&
    other.class_ == class_ &&
    other.displayName == displayName &&
    other.estimatedDurationInMillis == estimatedDurationInMillis &&
    other.fullDisplayName == fullDisplayName &&
    other.fullName == fullName &&
    other.name == name &&
    other.organization == organization &&
    _deepEquality.equals(other.parameters, parameters) &&
    other.permissions == permissions &&
    other.weatherScore == weatherScore &&
    other.pullRequest == pullRequest &&
    other.links == links &&
    other.latestRun == latestRun;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis!.hashCode) +
    (fullDisplayName == null ? 0 : fullDisplayName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (parameters.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (weatherScore == null ? 0 : weatherScore!.hashCode) +
    (pullRequest == null ? 0 : pullRequest!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode);

  @override
  String toString() => 'BranchImpl[class_=$class_, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullDisplayName=$fullDisplayName, fullName=$fullName, name=$name, organization=$organization, parameters=$parameters, permissions=$permissions, weatherScore=$weatherScore, pullRequest=$pullRequest, links=$links, latestRun=$latestRun]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
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
    if (this.fullDisplayName != null) {
      json[r'fullDisplayName'] = this.fullDisplayName;
    } else {
      json[r'fullDisplayName'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
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
      json[r'parameters'] = this.parameters;
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.weatherScore != null) {
      json[r'weatherScore'] = this.weatherScore;
    } else {
      json[r'weatherScore'] = null;
    }
    if (this.pullRequest != null) {
      json[r'pullRequest'] = this.pullRequest;
    } else {
      json[r'pullRequest'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    if (this.latestRun != null) {
      json[r'latestRun'] = this.latestRun;
    } else {
      json[r'latestRun'] = null;
    }
    return json;
  }

  /// Returns a new [BranchImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchImpl? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BranchImpl[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BranchImpl[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<BranchImpl> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchImpl>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchImpl.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BranchImpl> mapFromJson(dynamic json) {
    final map = <String, BranchImpl>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BranchImpl.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BranchImpl-objects as value to a dart map
  static Map<String, List<BranchImpl>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BranchImpl>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BranchImpl.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

