//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String name;

  String sha;

  String class_;

  String repo;

  int size;

  String owner;

  String path;

  String base64Data;

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
    (name == null ? 0 : name.hashCode) +
    (sha == null ? 0 : sha.hashCode) +
    (class_ == null ? 0 : class_.hashCode) +
    (repo == null ? 0 : repo.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (owner == null ? 0 : owner.hashCode) +
    (path == null ? 0 : path.hashCode) +
    (base64Data == null ? 0 : base64Data.hashCode);

  @override
  String toString() => 'GithubContent[name=$name, sha=$sha, class_=$class_, repo=$repo, size=$size, owner=$owner, path=$path, base64Data=$base64Data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (sha != null) {
      json[r'sha'] = sha;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (repo != null) {
      json[r'repo'] = repo;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (path != null) {
      json[r'path'] = path;
    }
    if (base64Data != null) {
      json[r'base64Data'] = base64Data;
    }
    return json;
  }

  /// Returns a new [GithubContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubContent fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<GithubContent> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubContent.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubContent>[];

  static Map<String, GithubContent> mapFromJson(dynamic json) {
    final map = <String, GithubContent>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubContent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubContent-objects as value to a dart map
  static Map<String, List<GithubContent>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubContent>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubContent.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

