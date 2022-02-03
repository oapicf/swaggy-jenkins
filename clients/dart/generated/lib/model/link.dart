//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Link {
  /// Returns a new [Link] instance.
  Link({
    this.class_,
    this.href,
  });

  String class_;

  String href;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Link &&
     other.class_ == class_ &&
     other.href == href;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (href == null ? 0 : href.hashCode);

  @override
  String toString() => 'Link[class_=$class_, href=$href]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (href != null) {
      json[r'href'] = href;
    }
    return json;
  }

  /// Returns a new [Link] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Link fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Link(
        class_: mapValueOfType<String>(json, r'_class'),
        href: mapValueOfType<String>(json, r'href'),
      );
    }
    return null;
  }

  static List<Link> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Link.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Link>[];

  static Map<String, Link> mapFromJson(dynamic json) {
    final map = <String, Link>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Link.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Link>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Link.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

