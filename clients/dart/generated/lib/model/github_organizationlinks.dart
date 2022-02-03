//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubOrganizationlinks {
  /// Returns a new [GithubOrganizationlinks] instance.
  GithubOrganizationlinks({
    this.repositories,
    this.self,
    this.class_,
  });

  Link repositories;

  Link self;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubOrganizationlinks &&
     other.repositories == repositories &&
     other.self == self &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (repositories == null ? 0 : repositories.hashCode) +
    (self == null ? 0 : self.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'GithubOrganizationlinks[repositories=$repositories, self=$self, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (repositories != null) {
      json[r'repositories'] = repositories;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [GithubOrganizationlinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubOrganizationlinks fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GithubOrganizationlinks(
        repositories: Link.fromJson(json[r'repositories']),
        self: Link.fromJson(json[r'self']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<GithubOrganizationlinks> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubOrganizationlinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubOrganizationlinks>[];

  static Map<String, GithubOrganizationlinks> mapFromJson(dynamic json) {
    final map = <String, GithubOrganizationlinks>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubOrganizationlinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubOrganizationlinks-objects as value to a dart map
  static Map<String, List<GithubOrganizationlinks>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubOrganizationlinks>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubOrganizationlinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

