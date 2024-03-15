//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DiskSpaceMonitorDescriptorDiskSpace {
  /// Returns a new [DiskSpaceMonitorDescriptorDiskSpace] instance.
  DiskSpaceMonitorDescriptorDiskSpace({
    this.class_,
    this.timestamp,
    this.path,
    this.size,
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
  int? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DiskSpaceMonitorDescriptorDiskSpace &&
    other.class_ == class_ &&
    other.timestamp == timestamp &&
    other.path == path &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'DiskSpaceMonitorDescriptorDiskSpace[class_=$class_, timestamp=$timestamp, path=$path, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [DiskSpaceMonitorDescriptorDiskSpace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DiskSpaceMonitorDescriptorDiskSpace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DiskSpaceMonitorDescriptorDiskSpace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DiskSpaceMonitorDescriptorDiskSpace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DiskSpaceMonitorDescriptorDiskSpace(
        class_: mapValueOfType<String>(json, r'_class'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        path: mapValueOfType<String>(json, r'path'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<DiskSpaceMonitorDescriptorDiskSpace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiskSpaceMonitorDescriptorDiskSpace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiskSpaceMonitorDescriptorDiskSpace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DiskSpaceMonitorDescriptorDiskSpace> mapFromJson(dynamic json) {
    final map = <String, DiskSpaceMonitorDescriptorDiskSpace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DiskSpaceMonitorDescriptorDiskSpace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DiskSpaceMonitorDescriptorDiskSpace-objects as value to a dart map
  static Map<String, List<DiskSpaceMonitorDescriptorDiskSpace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DiskSpaceMonitorDescriptorDiskSpace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DiskSpaceMonitorDescriptorDiskSpace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

