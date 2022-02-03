//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Organisation {
  /// Returns a new [Organisation] instance.
  Organisation({
    this.class_,
    this.name,
  });

  String class_;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Organisation &&
     other.class_ == class_ &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'Organisation[class_=$class_, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [Organisation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Organisation fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Organisation(
        class_: mapValueOfType<String>(json, r'_class'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<Organisation> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Organisation.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Organisation>[];

  static Map<String, Organisation> mapFromJson(dynamic json) {
    final map = <String, Organisation>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Organisation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Organisation-objects as value to a dart map
  static Map<String, List<Organisation>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Organisation>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Organisation.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

