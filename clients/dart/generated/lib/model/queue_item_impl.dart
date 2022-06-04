//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueueItemImpl {
  /// Returns a new [QueueItemImpl] instance.
  QueueItemImpl({
    this.class_,
    this.expectedBuildNumber,
    this.id,
    this.pipeline,
    this.queuedTime,
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
  int? expectedBuildNumber;

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
  String? pipeline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? queuedTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueueItemImpl &&
     other.class_ == class_ &&
     other.expectedBuildNumber == expectedBuildNumber &&
     other.id == id &&
     other.pipeline == pipeline &&
     other.queuedTime == queuedTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (expectedBuildNumber == null ? 0 : expectedBuildNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pipeline == null ? 0 : pipeline!.hashCode) +
    (queuedTime == null ? 0 : queuedTime!.hashCode);

  @override
  String toString() => 'QueueItemImpl[class_=$class_, expectedBuildNumber=$expectedBuildNumber, id=$id, pipeline=$pipeline, queuedTime=$queuedTime]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (expectedBuildNumber != null) {
      _json[r'expectedBuildNumber'] = expectedBuildNumber;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (pipeline != null) {
      _json[r'pipeline'] = pipeline;
    }
    if (queuedTime != null) {
      _json[r'queuedTime'] = queuedTime;
    }
    return _json;
  }

  /// Returns a new [QueueItemImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueItemImpl? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueueItemImpl[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueueItemImpl[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueueItemImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        expectedBuildNumber: mapValueOfType<int>(json, r'expectedBuildNumber'),
        id: mapValueOfType<String>(json, r'id'),
        pipeline: mapValueOfType<String>(json, r'pipeline'),
        queuedTime: mapValueOfType<int>(json, r'queuedTime'),
      );
    }
    return null;
  }

  static List<QueueItemImpl>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueueItemImpl>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueueItemImpl.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueueItemImpl> mapFromJson(dynamic json) {
    final map = <String, QueueItemImpl>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueItemImpl.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueueItemImpl-objects as value to a dart map
  static Map<String, List<QueueItemImpl>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueueItemImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueItemImpl.listFromJson(entry.value, growable: growable,);
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

