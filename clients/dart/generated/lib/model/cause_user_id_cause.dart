//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CauseUserIdCause {
  /// Returns a new [CauseUserIdCause] instance.
  CauseUserIdCause({
    this.class_,
    this.shortDescription,
    this.userId,
    this.userName,
  });

  String class_;

  String shortDescription;

  String userId;

  String userName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CauseUserIdCause &&
     other.class_ == class_ &&
     other.shortDescription == shortDescription &&
     other.userId == userId &&
     other.userName == userName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (shortDescription == null ? 0 : shortDescription.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (userName == null ? 0 : userName.hashCode);

  @override
  String toString() => 'CauseUserIdCause[class_=$class_, shortDescription=$shortDescription, userId=$userId, userName=$userName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (shortDescription != null) {
      json[r'shortDescription'] = shortDescription;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (userName != null) {
      json[r'userName'] = userName;
    }
    return json;
  }

  /// Returns a new [CauseUserIdCause] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CauseUserIdCause fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CauseUserIdCause(
        class_: mapValueOfType<String>(json, r'_class'),
        shortDescription: mapValueOfType<String>(json, r'shortDescription'),
        userId: mapValueOfType<String>(json, r'userId'),
        userName: mapValueOfType<String>(json, r'userName'),
      );
    }
    return null;
  }

  static List<CauseUserIdCause> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CauseUserIdCause.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CauseUserIdCause>[];

  static Map<String, CauseUserIdCause> mapFromJson(dynamic json) {
    final map = <String, CauseUserIdCause>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CauseUserIdCause.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CauseUserIdCause-objects as value to a dart map
  static Map<String, List<CauseUserIdCause>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CauseUserIdCause>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CauseUserIdCause.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

