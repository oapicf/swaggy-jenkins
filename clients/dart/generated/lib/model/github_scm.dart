//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubScm {
  /// Returns a new [GithubScm] instance.
  GithubScm({
    this.class_,
    this.links,
    this.credentialId,
    this.id,
    this.uri,
  });

  String class_;

  GithubScmlinks links;

  String credentialId;

  String id;

  String uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubScm &&
     other.class_ == class_ &&
     other.links == links &&
     other.credentialId == credentialId &&
     other.id == id &&
     other.uri == uri;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (credentialId == null ? 0 : credentialId.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (uri == null ? 0 : uri.hashCode);

  @override
  String toString() => 'GithubScm[class_=$class_, links=$links, credentialId=$credentialId, id=$id, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (credentialId != null) {
      json[r'credentialId'] = credentialId;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (uri != null) {
      json[r'uri'] = uri;
    }
    return json;
  }

  /// Returns a new [GithubScm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubScm fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GithubScm(
        class_: mapValueOfType<String>(json, r'_class'),
        links: GithubScmlinks.fromJson(json[r'_links']),
        credentialId: mapValueOfType<String>(json, r'credentialId'),
        id: mapValueOfType<String>(json, r'id'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<GithubScm> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubScm.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubScm>[];

  static Map<String, GithubScm> mapFromJson(dynamic json) {
    final map = <String, GithubScm>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubScm.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubScm-objects as value to a dart map
  static Map<String, List<GithubScm>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubScm>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubScm.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

