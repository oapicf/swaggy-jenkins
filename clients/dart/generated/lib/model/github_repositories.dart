//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  GithubRepositorieslinks links;

  List<GithubRepository> items;

  int lastPage;

  int nextPage;

  int pageSize;

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
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (items == null ? 0 : items.hashCode) +
    (lastPage == null ? 0 : lastPage.hashCode) +
    (nextPage == null ? 0 : nextPage.hashCode) +
    (pageSize == null ? 0 : pageSize.hashCode);

  @override
  String toString() => 'GithubRepositories[class_=$class_, links=$links, items=$items, lastPage=$lastPage, nextPage=$nextPage, pageSize=$pageSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (items != null) {
      json[r'items'] = items;
    }
    if (lastPage != null) {
      json[r'lastPage'] = lastPage;
    }
    if (nextPage != null) {
      json[r'nextPage'] = nextPage;
    }
    if (pageSize != null) {
      json[r'pageSize'] = pageSize;
    }
    return json;
  }

  /// Returns a new [GithubRepositories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRepositories fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GithubRepositories(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubRepositorieslinks.fromJson(json[r'_links']),
        items: GithubRepository.listFromJson(json[r'items']),
        lastPage: mapValueOfType<int>(json, r'lastPage'),
        nextPage: mapValueOfType<int>(json, r'nextPage'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
      );
    }
    return null;
  }

  static List<GithubRepositories> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubRepositories.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubRepositories>[];

  static Map<String, GithubRepositories> mapFromJson(dynamic json) {
    final map = <String, GithubRepositories>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubRepositories.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubRepositories-objects as value to a dart map
  static Map<String, List<GithubRepositories>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubRepositories>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubRepositories.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

