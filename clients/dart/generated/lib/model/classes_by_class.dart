//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClassesByClass &&
     other.classes == classes &&
     other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classes.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'ClassesByClass[classes=$classes, class_=$class_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'classes'] = classes;
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    return _json;
  }

  /// Returns a new [ClassesByClass] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClassesByClass? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClassesByClass[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClassesByClass[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClassesByClass(
        classes: json[r'classes'] is List
            ? (json[r'classes'] as List).cast<String>()
            : const [],
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<ClassesByClass>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClassesByClass>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClassesByClass.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClassesByClass> mapFromJson(dynamic json) {
    final map = <String, ClassesByClass>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassesByClass.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClassesByClass-objects as value to a dart map
  static Map<String, List<ClassesByClass>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClassesByClass>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClassesByClass.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

