//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenericResource {
  /// Returns a new [GenericResource] instance.
  GenericResource({
    this.class_,
    this.displayName,
    this.durationInMillis,
    this.id,
    this.result,
    this.startTime,
  });

  String class_;

  String displayName;

  int durationInMillis;

  String id;

  String result;

  String startTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenericResource &&
     other.class_ == class_ &&
     other.displayName == displayName &&
     other.durationInMillis == durationInMillis &&
     other.id == id &&
     other.result == result &&
     other.startTime == startTime;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (startTime == null ? 0 : startTime.hashCode);

  @override
  String toString() => 'GenericResource[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, result=$result, startTime=$startTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (durationInMillis != null) {
      json[r'durationInMillis'] = durationInMillis;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    if (startTime != null) {
      json[r'startTime'] = startTime;
    }
    return json;
  }

  /// Returns a new [GenericResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenericResource fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GenericResource(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        id: mapValueOfType<String>(json, r'id'),
        result: mapValueOfType<String>(json, r'result'),
        startTime: mapValueOfType<String>(json, r'startTime'),
      );
    }
    return null;
  }

  static List<GenericResource> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GenericResource.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GenericResource>[];

  static Map<String, GenericResource> mapFromJson(dynamic json) {
    final map = <String, GenericResource>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GenericResource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GenericResource-objects as value to a dart map
  static Map<String, List<GenericResource>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GenericResource>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GenericResource.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

