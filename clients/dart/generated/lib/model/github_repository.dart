//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubRepository {
  /// Returns a new [GithubRepository] instance.
  GithubRepository({
    this.class_,
    this.links,
    this.defaultBranch,
    this.description,
    this.name,
    this.permissions,
    this.private,
    this.fullName,
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
  GithubRepositorylinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultBranch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

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
  GithubRepositorypermissions? permissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubRepository &&
    other.class_ == class_ &&
    other.links == links &&
    other.defaultBranch == defaultBranch &&
    other.description == description &&
    other.name == name &&
    other.permissions == permissions &&
    other.private == private &&
    other.fullName == fullName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (defaultBranch == null ? 0 : defaultBranch!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode);

  @override
  String toString() => 'GithubRepository[class_=$class_, links=$links, defaultBranch=$defaultBranch, description=$description, name=$name, permissions=$permissions, private=$private, fullName=$fullName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    if (this.defaultBranch != null) {
      json[r'defaultBranch'] = this.defaultBranch;
    } else {
      json[r'defaultBranch'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    return json;
  }

  /// Returns a new [GithubRepository] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRepository? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubRepository[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubRepository[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubRepository(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubRepositorylinks.fromJson(json[r'_links']),
        defaultBranch: mapValueOfType<String>(json, r'defaultBranch'),
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        permissions: GithubRepositorypermissions.fromJson(json[r'permissions']),
        private: mapValueOfType<bool>(json, r'private'),
        fullName: mapValueOfType<String>(json, r'fullName'),
      );
    }
    return null;
  }

  static List<GithubRepository> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubRepository>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubRepository.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubRepository> mapFromJson(dynamic json) {
    final map = <String, GithubRepository>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubRepository.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubRepository-objects as value to a dart map
  static Map<String, List<GithubRepository>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubRepository>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubRepository.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

