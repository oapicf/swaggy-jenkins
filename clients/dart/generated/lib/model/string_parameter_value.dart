//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StringParameterValue {
  /// Returns a new [StringParameterValue] instance.
  StringParameterValue({
    this.class_,
    this.name,
    this.value,
  });

  String class_;

  String name;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StringParameterValue &&
     other.class_ == class_ &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'StringParameterValue[class_=$class_, name=$name, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [StringParameterValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StringParameterValue fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return StringParameterValue(
        class_: mapValueOfType<String>(json, r'_class'),
        name: mapValueOfType<String>(json, r'name'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<StringParameterValue> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StringParameterValue.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StringParameterValue>[];

  static Map<String, StringParameterValue> mapFromJson(dynamic json) {
    final map = <String, StringParameterValue>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = StringParameterValue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StringParameterValue-objects as value to a dart map
  static Map<String, List<StringParameterValue>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StringParameterValue>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = StringParameterValue.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

