//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StringParameterDefinition {
  /// Returns a new [StringParameterDefinition] instance.
  StringParameterDefinition({
    this.class_,
    this.defaultParameterValue,
    this.description,
    this.name,
    this.type,
  });

  String class_;

  StringParameterValue defaultParameterValue;

  String description;

  String name;

  String type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StringParameterDefinition &&
     other.class_ == class_ &&
     other.defaultParameterValue == defaultParameterValue &&
     other.description == description &&
     other.name == name &&
     other.type == type;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (defaultParameterValue == null ? 0 : defaultParameterValue.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'StringParameterDefinition[class_=$class_, defaultParameterValue=$defaultParameterValue, description=$description, name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (defaultParameterValue != null) {
      json[r'defaultParameterValue'] = defaultParameterValue;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  /// Returns a new [StringParameterDefinition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StringParameterDefinition fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return StringParameterDefinition(
        class_: mapValueOfType<String>(json, r'_class'),
        defaultParameterValue: StringParameterValue.fromJson(json[r'defaultParameterValue']),
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<StringParameterDefinition> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StringParameterDefinition.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StringParameterDefinition>[];

  static Map<String, StringParameterDefinition> mapFromJson(dynamic json) {
    final map = <String, StringParameterDefinition>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = StringParameterDefinition.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StringParameterDefinition-objects as value to a dart map
  static Map<String, List<StringParameterDefinition>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StringParameterDefinition>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = StringParameterDefinition.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

