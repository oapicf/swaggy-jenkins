//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  int expectedBuildNumber;

  String id;

  String pipeline;

  int queuedTime;

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
    (class_ == null ? 0 : class_.hashCode) +
    (expectedBuildNumber == null ? 0 : expectedBuildNumber.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (pipeline == null ? 0 : pipeline.hashCode) +
    (queuedTime == null ? 0 : queuedTime.hashCode);

  @override
  String toString() => 'QueueItemImpl[class_=$class_, expectedBuildNumber=$expectedBuildNumber, id=$id, pipeline=$pipeline, queuedTime=$queuedTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (expectedBuildNumber != null) {
      json[r'expectedBuildNumber'] = expectedBuildNumber;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (pipeline != null) {
      json[r'pipeline'] = pipeline;
    }
    if (queuedTime != null) {
      json[r'queuedTime'] = queuedTime;
    }
    return json;
  }

  /// Returns a new [QueueItemImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueItemImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<QueueItemImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(QueueItemImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <QueueItemImpl>[];

  static Map<String, QueueItemImpl> mapFromJson(dynamic json) {
    final map = <String, QueueItemImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = QueueItemImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of QueueItemImpl-objects as value to a dart map
  static Map<String, List<QueueItemImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<QueueItemImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = QueueItemImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

