//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClassesByClass {
  /// Returns a new [ClassesByClass] instance.
  ClassesByClass({
    this.classes = const [],
    this.class_,
  });

  List<String> classes;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassesByClass &&
     other.classes == classes &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (classes == null ? 0 : classes.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'ClassesByClass[classes=$classes, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (classes != null) {
      json[r'classes'] = classes;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [ClassesByClass] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassesByClass fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ClassesByClass(
        classes: json[r'classes'] is List
          ? (json[r'classes'] as List).cast<String>()
          : null,
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<ClassesByClass> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ClassesByClass.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ClassesByClass>[];

  static Map<String, ClassesByClass> mapFromJson(dynamic json) {
    final map = <String, ClassesByClass>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ClassesByClass.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ClassesByClass-objects as value to a dart map
  static Map<String, List<ClassesByClass>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ClassesByClass>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ClassesByClass.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

