//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMonitorData {
  /// Returns a new [ResponseTimeMonitorData] instance.
  ResponseTimeMonitorData({
    this.class_,
    this.timestamp,
    this.average,
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
  int? average;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMonitorData &&
    other.class_ == class_ &&
    other.timestamp == timestamp &&
    other.average == average;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (average == null ? 0 : average!.hashCode);

  @override
  String toString() => 'ResponseTimeMonitorData[class_=$class_, timestamp=$timestamp, average=$average]';

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
    if (this.average != null) {
      json[r'average'] = this.average;
    } else {
      json[r'average'] = null;
    }
    return json;
  }

  /// Returns a new [ResponseTimeMonitorData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResponseTimeMonitorData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResponseTimeMonitorData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResponseTimeMonitorData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResponseTimeMonitorData(
        class_: mapValueOfType<String>(json, r'_class'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        average: mapValueOfType<int>(json, r'average'),
      );
    }
    return null;
  }

  static List<ResponseTimeMonitorData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResponseTimeMonitorData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResponseTimeMonitorData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResponseTimeMonitorData> mapFromJson(dynamic json) {
    final map = <String, ResponseTimeMonitorData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResponseTimeMonitorData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMonitorData-objects as value to a dart map
  static Map<String, List<ResponseTimeMonitorData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResponseTimeMonitorData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResponseTimeMonitorData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

