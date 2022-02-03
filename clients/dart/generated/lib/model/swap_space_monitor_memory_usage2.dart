//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SwapSpaceMonitorMemoryUsage2 {
  /// Returns a new [SwapSpaceMonitorMemoryUsage2] instance.
  SwapSpaceMonitorMemoryUsage2({
    this.class_,
    this.availablePhysicalMemory,
    this.availableSwapSpace,
    this.totalPhysicalMemory,
    this.totalSwapSpace,
  });

  String class_;

  int availablePhysicalMemory;

  int availableSwapSpace;

  int totalPhysicalMemory;

  int totalSwapSpace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SwapSpaceMonitorMemoryUsage2 &&
     other.class_ == class_ &&
     other.availablePhysicalMemory == availablePhysicalMemory &&
     other.availableSwapSpace == availableSwapSpace &&
     other.totalPhysicalMemory == totalPhysicalMemory &&
     other.totalSwapSpace == totalSwapSpace;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (availablePhysicalMemory == null ? 0 : availablePhysicalMemory.hashCode) +
    (availableSwapSpace == null ? 0 : availableSwapSpace.hashCode) +
    (totalPhysicalMemory == null ? 0 : totalPhysicalMemory.hashCode) +
    (totalSwapSpace == null ? 0 : totalSwapSpace.hashCode);

  @override
  String toString() => 'SwapSpaceMonitorMemoryUsage2[class_=$class_, availablePhysicalMemory=$availablePhysicalMemory, availableSwapSpace=$availableSwapSpace, totalPhysicalMemory=$totalPhysicalMemory, totalSwapSpace=$totalSwapSpace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (availablePhysicalMemory != null) {
      json[r'availablePhysicalMemory'] = availablePhysicalMemory;
    }
    if (availableSwapSpace != null) {
      json[r'availableSwapSpace'] = availableSwapSpace;
    }
    if (totalPhysicalMemory != null) {
      json[r'totalPhysicalMemory'] = totalPhysicalMemory;
    }
    if (totalSwapSpace != null) {
      json[r'totalSwapSpace'] = totalSwapSpace;
    }
    return json;
  }

  /// Returns a new [SwapSpaceMonitorMemoryUsage2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwapSpaceMonitorMemoryUsage2 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SwapSpaceMonitorMemoryUsage2(
        class_: mapValueOfType<String>(json, r'_class'),
        availablePhysicalMemory: mapValueOfType<int>(json, r'availablePhysicalMemory'),
        availableSwapSpace: mapValueOfType<int>(json, r'availableSwapSpace'),
        totalPhysicalMemory: mapValueOfType<int>(json, r'totalPhysicalMemory'),
        totalSwapSpace: mapValueOfType<int>(json, r'totalSwapSpace'),
      );
    }
    return null;
  }

  static List<SwapSpaceMonitorMemoryUsage2> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SwapSpaceMonitorMemoryUsage2.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SwapSpaceMonitorMemoryUsage2>[];

  static Map<String, SwapSpaceMonitorMemoryUsage2> mapFromJson(dynamic json) {
    final map = <String, SwapSpaceMonitorMemoryUsage2>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SwapSpaceMonitorMemoryUsage2.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SwapSpaceMonitorMemoryUsage2-objects as value to a dart map
  static Map<String, List<SwapSpaceMonitorMemoryUsage2>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SwapSpaceMonitorMemoryUsage2>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SwapSpaceMonitorMemoryUsage2.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

