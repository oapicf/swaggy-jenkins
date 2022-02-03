//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  int timestamp;

  int average;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMonitorData &&
     other.class_ == class_ &&
     other.timestamp == timestamp &&
     other.average == average;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (timestamp == null ? 0 : timestamp.hashCode) +
    (average == null ? 0 : average.hashCode);

  @override
  String toString() => 'ResponseTimeMonitorData[class_=$class_, timestamp=$timestamp, average=$average]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (timestamp != null) {
      json[r'timestamp'] = timestamp;
    }
    if (average != null) {
      json[r'average'] = average;
    }
    return json;
  }

  /// Returns a new [ResponseTimeMonitorData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResponseTimeMonitorData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ResponseTimeMonitorData(
        class_: mapValueOfType<String>(json, r'_class'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        average: mapValueOfType<int>(json, r'average'),
      );
    }
    return null;
  }

  static List<ResponseTimeMonitorData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResponseTimeMonitorData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResponseTimeMonitorData>[];

  static Map<String, ResponseTimeMonitorData> mapFromJson(dynamic json) {
    final map = <String, ResponseTimeMonitorData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ResponseTimeMonitorData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMonitorData-objects as value to a dart map
  static Map<String, List<ResponseTimeMonitorData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMonitorData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ResponseTimeMonitorData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

