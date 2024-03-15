//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DefaultCrumbIssuer {
  /// Returns a new [DefaultCrumbIssuer] instance.
  DefaultCrumbIssuer({
    this.class_,
    this.crumb,
    this.crumbRequestField,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crumb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crumbRequestField;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DefaultCrumbIssuer &&
    other.class_ == class_ &&
    other.crumb == crumb &&
    other.crumbRequestField == crumbRequestField;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (crumb == null ? 0 : crumb!.hashCode) +
    (crumbRequestField == null ? 0 : crumbRequestField!.hashCode);

  @override
  String toString() => 'DefaultCrumbIssuer[class_=$class_, crumb=$crumb, crumbRequestField=$crumbRequestField]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.crumb != null) {
      json[r'crumb'] = this.crumb;
    } else {
      json[r'crumb'] = null;
    }
    if (this.crumbRequestField != null) {
      json[r'crumbRequestField'] = this.crumbRequestField;
    } else {
      json[r'crumbRequestField'] = null;
    }
    return json;
  }

  /// Returns a new [DefaultCrumbIssuer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DefaultCrumbIssuer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DefaultCrumbIssuer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DefaultCrumbIssuer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DefaultCrumbIssuer(
        class_: mapValueOfType<String>(json, r'_class'),
        crumb: mapValueOfType<String>(json, r'crumb'),
        crumbRequestField: mapValueOfType<String>(json, r'crumbRequestField'),
      );
    }
    return null;
  }

  static List<DefaultCrumbIssuer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DefaultCrumbIssuer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefaultCrumbIssuer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DefaultCrumbIssuer> mapFromJson(dynamic json) {
    final map = <String, DefaultCrumbIssuer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DefaultCrumbIssuer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DefaultCrumbIssuer-objects as value to a dart map
  static Map<String, List<DefaultCrumbIssuer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DefaultCrumbIssuer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DefaultCrumbIssuer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

