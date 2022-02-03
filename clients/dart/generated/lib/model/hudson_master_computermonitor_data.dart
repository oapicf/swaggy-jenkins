//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  SwapSpaceMonitorMemoryUsage2 hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;

  DiskSpaceMonitorDescriptorDiskSpace hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;

  DiskSpaceMonitorDescriptorDiskSpace hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;

  String hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;

  ResponseTimeMonitorData hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;

  ClockDifference hudsonPeriodNodeMonitorsPeriodClockMonitor;

  String class_;

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
    (hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodArchitectureMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodArchitectureMonitor.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor.hashCode) +
    (hudsonPeriodNodeMonitorsPeriodClockMonitor == null ? 0 : hudsonPeriodNodeMonitorsPeriodClockMonitor.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'HudsonMasterComputermonitorData[hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor=$hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor, hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor=$hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor, hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor=$hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor, hudsonPeriodNodeMonitorsPeriodArchitectureMonitor=$hudsonPeriodNodeMonitorsPeriodArchitectureMonitor, hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor=$hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor, hudsonPeriodNodeMonitorsPeriodClockMonitor=$hudsonPeriodNodeMonitorsPeriodClockMonitor, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor != null) {
      json[r'hudson.node_monitors.SwapSpaceMonitor'] = hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor != null) {
      json[r'hudson.node_monitors.TemporarySpaceMonitor'] = hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor != null) {
      json[r'hudson.node_monitors.DiskSpaceMonitor'] = hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodArchitectureMonitor != null) {
      json[r'hudson.node_monitors.ArchitectureMonitor'] = hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor != null) {
      json[r'hudson.node_monitors.ResponseTimeMonitor'] = hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;
    }
    if (hudsonPeriodNodeMonitorsPeriodClockMonitor != null) {
      json[r'hudson.node_monitors.ClockMonitor'] = hudsonPeriodNodeMonitorsPeriodClockMonitor;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [HudsonMasterComputermonitorData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HudsonMasterComputermonitorData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<HudsonMasterComputermonitorData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HudsonMasterComputermonitorData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HudsonMasterComputermonitorData>[];

  static Map<String, HudsonMasterComputermonitorData> mapFromJson(dynamic json) {
    final map = <String, HudsonMasterComputermonitorData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HudsonMasterComputermonitorData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HudsonMasterComputermonitorData-objects as value to a dart map
  static Map<String, List<HudsonMasterComputermonitorData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HudsonMasterComputermonitorData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HudsonMasterComputermonitorData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

