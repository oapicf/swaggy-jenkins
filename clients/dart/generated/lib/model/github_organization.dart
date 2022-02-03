//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubOrganization {
  /// Returns a new [GithubOrganization] instance.
  GithubOrganization({
    this.class_,
    this.links,
    this.jenkinsOrganizationPipeline,
    this.name,
  });

  String class_;

  GithubOrganizationlinks links;

  bool jenkinsOrganizationPipeline;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubOrganization &&
     other.class_ == class_ &&
     other.links == links &&
     other.jenkinsOrganizationPipeline == jenkinsOrganizationPipeline &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (jenkinsOrganizationPipeline == null ? 0 : jenkinsOrganizationPipeline.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'GithubOrganization[class_=$class_, links=$links, jenkinsOrganizationPipeline=$jenkinsOrganizationPipeline, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (jenkinsOrganizationPipeline != null) {
      json[r'jenkinsOrganizationPipeline'] = jenkinsOrganizationPipeline;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [GithubOrganization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubOrganization fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GithubOrganization(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubOrganizationlinks.fromJson(json[r'_links']),
        jenkinsOrganizationPipeline: mapValueOfType<bool>(json, r'jenkinsOrganizationPipeline'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<GithubOrganization> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubOrganization.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubOrganization>[];

  static Map<String, GithubOrganization> mapFromJson(dynamic json) {
    final map = <String, GithubOrganization>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubOrganization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubOrganization-objects as value to a dart map
  static Map<String, List<GithubOrganization>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubOrganization>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubOrganization.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

