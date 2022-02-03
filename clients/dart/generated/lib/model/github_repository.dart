//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  GithubRepositorylinks links;

  String defaultBranch;

  String description;

  String name;

  GithubRepositorypermissions permissions;

  bool private;

  String fullName;

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
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (defaultBranch == null ? 0 : defaultBranch.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (permissions == null ? 0 : permissions.hashCode) +
    (private == null ? 0 : private.hashCode) +
    (fullName == null ? 0 : fullName.hashCode);

  @override
  String toString() => 'GithubRepository[class_=$class_, links=$links, defaultBranch=$defaultBranch, description=$description, name=$name, permissions=$permissions, private=$private, fullName=$fullName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (defaultBranch != null) {
      json[r'defaultBranch'] = defaultBranch;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (permissions != null) {
      json[r'permissions'] = permissions;
    }
    if (private != null) {
      json[r'private'] = private;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    return json;
  }

  /// Returns a new [GithubRepository] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRepository fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<GithubRepository> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubRepository.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubRepository>[];

  static Map<String, GithubRepository> mapFromJson(dynamic json) {
    final map = <String, GithubRepository>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubRepository.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubRepository-objects as value to a dart map
  static Map<String, List<GithubRepository>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubRepository>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubRepository.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

