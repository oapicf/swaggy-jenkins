//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubRespositoryContainer {
  /// Returns a new [GithubRespositoryContainer] instance.
  GithubRespositoryContainer({
    this.class_,
    this.links,
    this.repositories,
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
  GithubRespositoryContainerlinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GithubRepositories? repositories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubRespositoryContainer &&
     other.class_ == class_ &&
     other.links == links &&
     other.repositories == repositories;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (repositories == null ? 0 : repositories!.hashCode);

  @override
  String toString() => 'GithubRespositoryContainer[class_=$class_, links=$links, repositories=$repositories]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (links != null) {
      _json[r'_links'] = links;
    }
    if (repositories != null) {
      _json[r'repositories'] = repositories;
    }
    return _json;
  }

  /// Returns a new [GithubRespositoryContainer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRespositoryContainer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubRespositoryContainer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubRespositoryContainer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubRespositoryContainer(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubRespositoryContainerlinks.fromJson(json[r'_links']),
        repositories: GithubRepositories.fromJson(json[r'repositories']),
      );
    }
    return null;
  }

  static List<GithubRespositoryContainer>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubRespositoryContainer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubRespositoryContainer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubRespositoryContainer> mapFromJson(dynamic json) {
    final map = <String, GithubRespositoryContainer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubRespositoryContainer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubRespositoryContainer-objects as value to a dart map
  static Map<String, List<GithubRespositoryContainer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubRespositoryContainer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubRespositoryContainer.listFromJson(entry.value, growable: growable,);
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

