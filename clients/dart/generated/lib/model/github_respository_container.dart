//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  GithubRespositoryContainerlinks links;

  GithubRepositories repositories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubRespositoryContainer &&
     other.class_ == class_ &&
     other.links == links &&
     other.repositories == repositories;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (repositories == null ? 0 : repositories.hashCode);

  @override
  String toString() => 'GithubRespositoryContainer[class_=$class_, links=$links, repositories=$repositories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (repositories != null) {
      json[r'repositories'] = repositories;
    }
    return json;
  }

  /// Returns a new [GithubRespositoryContainer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRespositoryContainer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GithubRespositoryContainer(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubRespositoryContainerlinks.fromJson(json[r'_links']),
        repositories: GithubRepositories.fromJson(json[r'repositories']),
      );
    }
    return null;
  }

  static List<GithubRespositoryContainer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubRespositoryContainer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubRespositoryContainer>[];

  static Map<String, GithubRespositoryContainer> mapFromJson(dynamic json) {
    final map = <String, GithubRespositoryContainer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubRespositoryContainer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubRespositoryContainer-objects as value to a dart map
  static Map<String, List<GithubRespositoryContainer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubRespositoryContainer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubRespositoryContainer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

