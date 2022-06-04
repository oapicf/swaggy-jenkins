//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationInMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startTime;

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
    (class_ == null ? 0 : class_!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode);

  @override
  String toString() => 'GenericResource[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, result=$result, startTime=$startTime]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (durationInMillis != null) {
      _json[r'durationInMillis'] = durationInMillis;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (result != null) {
      _json[r'result'] = result;
    }
    if (startTime != null) {
      _json[r'startTime'] = startTime;
    }
    return _json;
  }

  /// Returns a new [GenericResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenericResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenericResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenericResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<GenericResource>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenericResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenericResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenericResource> mapFromJson(dynamic json) {
    final map = <String, GenericResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenericResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenericResource-objects as value to a dart map
  static Map<String, List<GenericResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenericResource>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenericResource.listFromJson(entry.value, growable: growable,);
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

