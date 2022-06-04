//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubRepositories {
  /// Returns a new [GithubRepositories] instance.
  GithubRepositories({
    this.class_,
    this.links,
    this.items = const [],
    this.lastPage,
    this.nextPage,
    this.pageSize,
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
  GithubRepositorieslinks? links;

  List<GithubRepository> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubRepositories &&
     other.class_ == class_ &&
     other.links == links &&
     other.items == items &&
     other.lastPage == lastPage &&
     other.nextPage == nextPage &&
     other.pageSize == pageSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (items.hashCode) +
    (lastPage == null ? 0 : lastPage!.hashCode) +
    (nextPage == null ? 0 : nextPage!.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode);

  @override
  String toString() => 'GithubRepositories[class_=$class_, links=$links, items=$items, lastPage=$lastPage, nextPage=$nextPage, pageSize=$pageSize]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (links != null) {
      _json[r'_links'] = links;
    }
      _json[r'items'] = items;
    if (lastPage != null) {
      _json[r'lastPage'] = lastPage;
    }
    if (nextPage != null) {
      _json[r'nextPage'] = nextPage;
    }
    if (pageSize != null) {
      _json[r'pageSize'] = pageSize;
    }
    return _json;
  }

  /// Returns a new [GithubRepositories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRepositories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubRepositories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubRepositories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubRepositories(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubRepositorieslinks.fromJson(json[r'_links']),
        items: GithubRepository.listFromJson(json[r'items']) ?? const [],
        lastPage: mapValueOfType<int>(json, r'lastPage'),
        nextPage: mapValueOfType<int>(json, r'nextPage'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
      );
    }
    return null;
  }

  static List<GithubRepositories>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubRepositories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubRepositories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubRepositories> mapFromJson(dynamic json) {
    final map = <String, GithubRepositories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubRepositories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubRepositories-objects as value to a dart map
  static Map<String, List<GithubRepositories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubRepositories>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubRepositories.listFromJson(entry.value, growable: growable,);
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

