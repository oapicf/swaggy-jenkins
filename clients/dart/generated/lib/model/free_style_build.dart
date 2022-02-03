//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FreeStyleBuild {
  /// Returns a new [FreeStyleBuild] instance.
  FreeStyleBuild({
    this.class_,
    this.number,
    this.url,
    this.actions = const [],
    this.building,
    this.description,
    this.displayName,
    this.duration,
    this.estimatedDuration,
    this.executor,
    this.fullDisplayName,
    this.id,
    this.keepLog,
    this.queueId,
    this.result,
    this.timestamp,
    this.builtOn,
    this.changeSet,
  });

  String class_;

  int number;

  String url;

  List<CauseAction> actions;

  bool building;

  String description;

  String displayName;

  int duration;

  int estimatedDuration;

  String executor;

  String fullDisplayName;

  String id;

  bool keepLog;

  int queueId;

  String result;

  int timestamp;

  String builtOn;

  EmptyChangeLogSet changeSet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FreeStyleBuild &&
     other.class_ == class_ &&
     other.number == number &&
     other.url == url &&
     other.actions == actions &&
     other.building == building &&
     other.description == description &&
     other.displayName == displayName &&
     other.duration == duration &&
     other.estimatedDuration == estimatedDuration &&
     other.executor == executor &&
     other.fullDisplayName == fullDisplayName &&
     other.id == id &&
     other.keepLog == keepLog &&
     other.queueId == queueId &&
     other.result == result &&
     other.timestamp == timestamp &&
     other.builtOn == builtOn &&
     other.changeSet == changeSet;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (actions == null ? 0 : actions.hashCode) +
    (building == null ? 0 : building.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (estimatedDuration == null ? 0 : estimatedDuration.hashCode) +
    (executor == null ? 0 : executor.hashCode) +
    (fullDisplayName == null ? 0 : fullDisplayName.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (keepLog == null ? 0 : keepLog.hashCode) +
    (queueId == null ? 0 : queueId.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (timestamp == null ? 0 : timestamp.hashCode) +
    (builtOn == null ? 0 : builtOn.hashCode) +
    (changeSet == null ? 0 : changeSet.hashCode);

  @override
  String toString() => 'FreeStyleBuild[class_=$class_, number=$number, url=$url, actions=$actions, building=$building, description=$description, displayName=$displayName, duration=$duration, estimatedDuration=$estimatedDuration, executor=$executor, fullDisplayName=$fullDisplayName, id=$id, keepLog=$keepLog, queueId=$queueId, result=$result, timestamp=$timestamp, builtOn=$builtOn, changeSet=$changeSet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (actions != null) {
      json[r'actions'] = actions;
    }
    if (building != null) {
      json[r'building'] = building;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (estimatedDuration != null) {
      json[r'estimatedDuration'] = estimatedDuration;
    }
    if (executor != null) {
      json[r'executor'] = executor;
    }
    if (fullDisplayName != null) {
      json[r'fullDisplayName'] = fullDisplayName;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (keepLog != null) {
      json[r'keepLog'] = keepLog;
    }
    if (queueId != null) {
      json[r'queueId'] = queueId;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    if (timestamp != null) {
      json[r'timestamp'] = timestamp;
    }
    if (builtOn != null) {
      json[r'builtOn'] = builtOn;
    }
    if (changeSet != null) {
      json[r'changeSet'] = changeSet;
    }
    return json;
  }

  /// Returns a new [FreeStyleBuild] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeStyleBuild fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FreeStyleBuild(
        class_: mapValueOfType<String>(json, r'_class'),
        number: mapValueOfType<int>(json, r'number'),
        url: mapValueOfType<String>(json, r'url'),
        actions: CauseAction.listFromJson(json[r'actions']),
        building: mapValueOfType<bool>(json, r'building'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        duration: mapValueOfType<int>(json, r'duration'),
        estimatedDuration: mapValueOfType<int>(json, r'estimatedDuration'),
        executor: mapValueOfType<String>(json, r'executor'),
        fullDisplayName: mapValueOfType<String>(json, r'fullDisplayName'),
        id: mapValueOfType<String>(json, r'id'),
        keepLog: mapValueOfType<bool>(json, r'keepLog'),
        queueId: mapValueOfType<int>(json, r'queueId'),
        result: mapValueOfType<String>(json, r'result'),
        timestamp: mapValueOfType<int>(json, r'timestamp'),
        builtOn: mapValueOfType<String>(json, r'builtOn'),
        changeSet: EmptyChangeLogSet.fromJson(json[r'changeSet']),
      );
    }
    return null;
  }

  static List<FreeStyleBuild> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FreeStyleBuild.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FreeStyleBuild>[];

  static Map<String, FreeStyleBuild> mapFromJson(dynamic json) {
    final map = <String, FreeStyleBuild>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FreeStyleBuild.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FreeStyleBuild-objects as value to a dart map
  static Map<String, List<FreeStyleBuild>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FreeStyleBuild>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FreeStyleBuild.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

