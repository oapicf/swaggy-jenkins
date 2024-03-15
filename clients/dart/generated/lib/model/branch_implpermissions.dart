//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BranchImplpermissions {
  /// Returns a new [BranchImplpermissions] instance.
  BranchImplpermissions({
    this.create,
    this.read,
    this.start,
    this.stop,
    this.class_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? create;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? read;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stop;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchImplpermissions &&
    other.create == create &&
    other.read == read &&
    other.start == start &&
    other.stop == stop &&
    other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (create == null ? 0 : create!.hashCode) +
    (read == null ? 0 : read!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (stop == null ? 0 : stop!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'BranchImplpermissions[create=$create, read=$read, start=$start, stop=$stop, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.create != null) {
      json[r'create'] = this.create;
    } else {
      json[r'create'] = null;
    }
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.stop != null) {
      json[r'stop'] = this.stop;
    } else {
      json[r'stop'] = null;
    }
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    return json;
  }

  /// Returns a new [BranchImplpermissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchImplpermissions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BranchImplpermissions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BranchImplpermissions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BranchImplpermissions(
        create: mapValueOfType<bool>(json, r'create'),
        read: mapValueOfType<bool>(json, r'read'),
        start: mapValueOfType<bool>(json, r'start'),
        stop: mapValueOfType<bool>(json, r'stop'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<BranchImplpermissions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchImplpermissions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchImplpermissions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BranchImplpermissions> mapFromJson(dynamic json) {
    final map = <String, BranchImplpermissions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BranchImplpermissions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BranchImplpermissions-objects as value to a dart map
  static Map<String, List<BranchImplpermissions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BranchImplpermissions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BranchImplpermissions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

