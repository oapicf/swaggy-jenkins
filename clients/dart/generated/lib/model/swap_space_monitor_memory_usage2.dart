//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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
  int? availablePhysicalMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableSwapSpace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPhysicalMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSwapSpace;

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
    (class_ == null ? 0 : class_!.hashCode) +
    (availablePhysicalMemory == null ? 0 : availablePhysicalMemory!.hashCode) +
    (availableSwapSpace == null ? 0 : availableSwapSpace!.hashCode) +
    (totalPhysicalMemory == null ? 0 : totalPhysicalMemory!.hashCode) +
    (totalSwapSpace == null ? 0 : totalSwapSpace!.hashCode);

  @override
  String toString() => 'SwapSpaceMonitorMemoryUsage2[class_=$class_, availablePhysicalMemory=$availablePhysicalMemory, availableSwapSpace=$availableSwapSpace, totalPhysicalMemory=$totalPhysicalMemory, totalSwapSpace=$totalSwapSpace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.availablePhysicalMemory != null) {
      json[r'availablePhysicalMemory'] = this.availablePhysicalMemory;
    } else {
      json[r'availablePhysicalMemory'] = null;
    }
    if (this.availableSwapSpace != null) {
      json[r'availableSwapSpace'] = this.availableSwapSpace;
    } else {
      json[r'availableSwapSpace'] = null;
    }
    if (this.totalPhysicalMemory != null) {
      json[r'totalPhysicalMemory'] = this.totalPhysicalMemory;
    } else {
      json[r'totalPhysicalMemory'] = null;
    }
    if (this.totalSwapSpace != null) {
      json[r'totalSwapSpace'] = this.totalSwapSpace;
    } else {
      json[r'totalSwapSpace'] = null;
    }
    return json;
  }

  /// Returns a new [SwapSpaceMonitorMemoryUsage2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwapSpaceMonitorMemoryUsage2? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SwapSpaceMonitorMemoryUsage2[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SwapSpaceMonitorMemoryUsage2[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<SwapSpaceMonitorMemoryUsage2> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SwapSpaceMonitorMemoryUsage2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwapSpaceMonitorMemoryUsage2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwapSpaceMonitorMemoryUsage2> mapFromJson(dynamic json) {
    final map = <String, SwapSpaceMonitorMemoryUsage2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwapSpaceMonitorMemoryUsage2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwapSpaceMonitorMemoryUsage2-objects as value to a dart map
  static Map<String, List<SwapSpaceMonitorMemoryUsage2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SwapSpaceMonitorMemoryUsage2>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwapSpaceMonitorMemoryUsage2.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

