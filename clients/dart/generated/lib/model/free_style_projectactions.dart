//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FreeStyleProjectactions {
  /// Returns a new [FreeStyleProjectactions] instance.
  FreeStyleProjectactions({
    this.class_,
  });

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FreeStyleProjectactions &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'FreeStyleProjectactions[class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [FreeStyleProjectactions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeStyleProjectactions fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FreeStyleProjectactions(
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<FreeStyleProjectactions> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FreeStyleProjectactions.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FreeStyleProjectactions>[];

  static Map<String, FreeStyleProjectactions> mapFromJson(dynamic json) {
    final map = <String, FreeStyleProjectactions>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FreeStyleProjectactions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FreeStyleProjectactions-objects as value to a dart map
  static Map<String, List<FreeStyleProjectactions>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FreeStyleProjectactions>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FreeStyleProjectactions.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

