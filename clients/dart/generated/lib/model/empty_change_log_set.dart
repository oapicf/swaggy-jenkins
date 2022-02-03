//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmptyChangeLogSet {
  /// Returns a new [EmptyChangeLogSet] instance.
  EmptyChangeLogSet({
    this.class_,
    this.kind,
  });

  String class_;

  String kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmptyChangeLogSet &&
     other.class_ == class_ &&
     other.kind == kind;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (kind == null ? 0 : kind.hashCode);

  @override
  String toString() => 'EmptyChangeLogSet[class_=$class_, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (kind != null) {
      json[r'kind'] = kind;
    }
    return json;
  }

  /// Returns a new [EmptyChangeLogSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmptyChangeLogSet fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return EmptyChangeLogSet(
        class_: mapValueOfType<String>(json, r'_class'),
        kind: mapValueOfType<String>(json, r'kind'),
      );
    }
    return null;
  }

  static List<EmptyChangeLogSet> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(EmptyChangeLogSet.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <EmptyChangeLogSet>[];

  static Map<String, EmptyChangeLogSet> mapFromJson(dynamic json) {
    final map = <String, EmptyChangeLogSet>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = EmptyChangeLogSet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmptyChangeLogSet-objects as value to a dart map
  static Map<String, List<EmptyChangeLogSet>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmptyChangeLogSet>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = EmptyChangeLogSet.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

