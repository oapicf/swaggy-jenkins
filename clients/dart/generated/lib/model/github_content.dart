//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubContent {
  /// Returns a new [GithubContent] instance.
  GithubContent({
    this.name,
    this.sha,
    this.class_,
    this.repo,
    this.size,
    this.owner,
    this.path,
    this.base64Data,
  });

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
  String? sha;

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
  String? repo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base64Data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubContent &&
    other.name == name &&
    other.sha == sha &&
    other.class_ == class_ &&
    other.repo == repo &&
    other.size == size &&
    other.owner == owner &&
    other.path == path &&
    other.base64Data == base64Data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (sha == null ? 0 : sha!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (base64Data == null ? 0 : base64Data!.hashCode);

  @override
  String toString() => 'GithubContent[name=$name, sha=$sha, class_=$class_, repo=$repo, size=$size, owner=$owner, path=$path, base64Data=$base64Data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.sha != null) {
      json[r'sha'] = this.sha;
    } else {
      json[r'sha'] = null;
    }
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.base64Data != null) {
      json[r'base64Data'] = this.base64Data;
    } else {
      json[r'base64Data'] = null;
    }
    return json;
  }

  /// Returns a new [GithubContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubContent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubContent(
        name: mapValueOfType<String>(json, r'name'),
        sha: mapValueOfType<String>(json, r'sha'),
        class_: mapValueOfType<String>(json, r'_class'),
        repo: mapValueOfType<String>(json, r'repo'),
        size: mapValueOfType<int>(json, r'size'),
        owner: mapValueOfType<String>(json, r'owner'),
        path: mapValueOfType<String>(json, r'path'),
        base64Data: mapValueOfType<String>(json, r'base64Data'),
      );
    }
    return null;
  }

  static List<GithubContent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubContent> mapFromJson(dynamic json) {
    final map = <String, GithubContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubContent-objects as value to a dart map
  static Map<String, List<GithubContent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubContent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

