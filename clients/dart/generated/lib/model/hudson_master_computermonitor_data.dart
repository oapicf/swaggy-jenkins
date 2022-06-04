//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HudsonMasterComputermonitorData {
  /// Returns a new [HudsonMasterComputermonitorData] instance.
  HudsonMasterComputermonitorData({
    this.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor,
    this.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor,
    this.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor,
    this.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor,
    this.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor,
    this.hudsonPeriodNodeMonitorsPeriodClockMonitor,
    this.class_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwapSpaceMonitorMemoryUsage2? hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DiskSpaceMonitorDescriptorDiskSpace? hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DiskSpaceMonitorDescriptorDiskSpace? hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ResponseTimeMonitorData? hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClockDifference? hudsonPeriodNodeMonitorsPeriodClockMonitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HudsonMasterComputermonitorData &&
     other.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor == hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor &&
     other.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor == hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor &&
     other.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor == hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor &&
     other.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor == hudsonPeriodNodeMonitorsPeriodArchitectureMonitor &&
     other.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor == hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor &&
     other.hudsonPeriodNodeMonitorsPeriodClockMonitor == hudsonPeriodNodeMonitorsPeriodClockMonitor &&
     other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor!.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor!.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor!.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodArchitectureMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodArchitectureMonitor!.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor!.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodClockMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodClockMonitor!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'HudsonMasterComputermonitorData[hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor=$hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor, hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor=$hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor, hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor=$hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor, hudsonPeriodNodeMonitorsPeriodArchitectureMonitor=$hudsonPeriodNodeMonitorsPeriodArchitectureMonitor, hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor=$hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor, hudsonPeriodNodeMonitorsPeriodClockMonitor=$hudsonPeriodNodeMonitorsPeriodClockMonitor, class_=$class_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor != null) {
      _json[r'hudson.node_monitors.SwapSpaceMonitor'] = hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor != null) {
      _json[r'hudson.node_monitors.TemporarySpaceMonitor'] = hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor != null) {
      _json[r'hudson.node_monitors.DiskSpaceMonitor'] = hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodArchitectureMonitor != null) {
      _json[r'hudson.node_monitors.ArchitectureMonitor'] = hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor != null) {
      _json[r'hudson.node_monitors.ResponseTimeMonitor'] = hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodClockMonitor != null) {
      _json[r'hudson.node_monitors.ClockMonitor'] = hudsonPeriodNodeMonitorsPeriodClockMonitor;
    }
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    return _json;
  }

  /// Returns a new [HudsonMasterComputermonitorData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HudsonMasterComputermonitorData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HudsonMasterComputermonitorData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HudsonMasterComputermonitorData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HudsonMasterComputermonitorData(
        hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor: SwapSpaceMonitorMemoryUsage2.fromJson(json[r'hudson.node_monitors.SwapSpaceMonitor']),
        hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace.fromJson(json[r'hudson.node_monitors.TemporarySpaceMonitor']),
        hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace.fromJson(json[r'hudson.node_monitors.DiskSpaceMonitor']),
        hudsonPeriodNodeMonitorsPeriodArchitectureMonitor: mapValueOfType<String>(json, r'hudson.node_monitors.ArchitectureMonitor'),
        hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor: ResponseTimeMonitorData.fromJson(json[r'hudson.node_monitors.ResponseTimeMonitor']),
        hudsonPeriodNodeMonitorsPeriodClockMonitor: ClockDifference.fromJson(json[r'hudson.node_monitors.ClockMonitor']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<HudsonMasterComputermonitorData>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HudsonMasterComputermonitorData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HudsonMasterComputermonitorData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HudsonMasterComputermonitorData> mapFromJson(dynamic json) {
    final map = <String, HudsonMasterComputermonitorData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HudsonMasterComputermonitorData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HudsonMasterComputermonitorData-objects as value to a dart map
  static Map<String, List<HudsonMasterComputermonitorData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HudsonMasterComputermonitorData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HudsonMasterComputermonitorData.listFromJson(entry.value, growable: growable,);
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

