//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ClockDifference {
  /// Returns a new [ClockDifference] instance.
  ClockDifference({
    this.class_,
    this.diff,
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
  int? diff;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClockDifference &&
     other.class_ == class_ &&
     other.diff == diff;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (diff == null ? 0 : diff!.hashCode);

  @override
  String toString() => 'ClockDifference[class_=$class_, diff=$diff]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (diff != null) {
      _json[r'diff'] = diff;
    }
    return _json;
  }

  /// Returns a new [ClockDifference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClockDifference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClockDifference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClockDifference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClockDifference(
        class_: mapValueOfType<String>(json, r'_class'),
        diff: mapValueOfType<int>(json, r'diff'),
      );
    }
    return null;
  }

  static List<ClockDifference>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClockDifference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClockDifference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClockDifference> mapFromJson(dynamic json) {
    final map = <String, ClockDifference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClockDifference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClockDifference-objects as value to a dart map
  static Map<String, List<ClockDifference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClockDifference>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClockDifference.listFromJson(entry.value, growable: growable,);
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

