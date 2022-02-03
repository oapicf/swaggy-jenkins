//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  int timestamp;

  String path;

  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DiskSpaceMonitorDescriptorDiskSpace &&
     other.class_ == class_ &&
     other.timestamp == timestamp &&
     other.path == path &&
     other.size == size;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (timestamp == null ? 0 : timestamp.hashCode) +
    (path == null ? 0 : path.hashCode) +
    (size == null ? 0 : size.hashCode);

  @override
  String toString() => 'DiskSpaceMonitorDescriptorDiskSpace[class_=$class_, timestamp=$timestamp, path=$path, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (timestamp != null) {
      json[r'timestamp'] = timestamp;
    }
    if (path != null) {
      json[r'path'] = path;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    return json;
  }

  /// Returns a new [DiskSpaceMonitorDescriptorDiskSpace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DiskSpaceMonitorDescriptorDiskSpace fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DiskSpaceMonitorDescriptorDiskSpace(
        class_: mapValueOfType<String>(json, r'_class'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        path: mapValueOfType<String>(json, r'path'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<DiskSpaceMonitorDescriptorDiskSpace> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DiskSpaceMonitorDescriptorDiskSpace.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DiskSpaceMonitorDescriptorDiskSpace>[];

  static Map<String, DiskSpaceMonitorDescriptorDiskSpace> mapFromJson(dynamic json) {
    final map = <String, DiskSpaceMonitorDescriptorDiskSpace>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DiskSpaceMonitorDescriptorDiskSpace.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DiskSpaceMonitorDescriptorDiskSpace-objects as value to a dart map
  static Map<String, List<DiskSpaceMonitorDescriptorDiskSpace>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DiskSpaceMonitorDescriptorDiskSpace>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DiskSpaceMonitorDescriptorDiskSpace.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

