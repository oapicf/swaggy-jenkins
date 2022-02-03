//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CauseAction {
  /// Returns a new [CauseAction] instance.
  CauseAction({
    this.class_,
    this.causes = const [],
  });

  String class_;

  List<CauseUserIdCause> causes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CauseAction &&
     other.class_ == class_ &&
     other.causes == causes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (causes == null ? 0 : causes.hashCode);

  @override
  String toString() => 'CauseAction[class_=$class_, causes=$causes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (causes != null) {
      json[r'causes'] = causes;
    }
    return json;
  }

  /// Returns a new [CauseAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CauseAction fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CauseAction(
        class_: mapValueOfType<String>(json, r'_class'),
        causes: CauseUserIdCause.listFromJson(json[r'causes']),
      );
    }
    return null;
  }

  static List<CauseAction> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CauseAction.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CauseAction>[];

  static Map<String, CauseAction> mapFromJson(dynamic json) {
    final map = <String, CauseAction>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CauseAction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CauseAction-objects as value to a dart map
  static Map<String, List<CauseAction>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CauseAction>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CauseAction.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

