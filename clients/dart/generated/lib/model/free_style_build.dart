//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  List<CauseAction> actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? building;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedDuration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? executor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullDisplayName;

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
  bool? keepLog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? queueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

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
  String? builtOn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmptyChangeLogSet? changeSet;

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
    (class_ == null ? 0 : class_!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (actions.hashCode) +
    (building == null ? 0 : building!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (estimatedDuration == null ? 0 : estimatedDuration!.hashCode) +
    (executor == null ? 0 : executor!.hashCode) +
    (fullDisplayName == null ? 0 : fullDisplayName!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (keepLog == null ? 0 : keepLog!.hashCode) +
    (queueId == null ? 0 : queueId!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (builtOn == null ? 0 : builtOn!.hashCode) +
    (changeSet == null ? 0 : changeSet!.hashCode);

  @override
  String toString() => 'FreeStyleBuild[class_=$class_, number=$number, url=$url, actions=$actions, building=$building, description=$description, displayName=$displayName, duration=$duration, estimatedDuration=$estimatedDuration, executor=$executor, fullDisplayName=$fullDisplayName, id=$id, keepLog=$keepLog, queueId=$queueId, result=$result, timestamp=$timestamp, builtOn=$builtOn, changeSet=$changeSet]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (number != null) {
      _json[r'number'] = number;
    }
    if (url != null) {
      _json[r'url'] = url;
    }
      _json[r'actions'] = actions;
    if (building != null) {
      _json[r'building'] = building;
    }
    if (description != null) {
      _json[r'description'] = description;
    }
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (duration != null) {
      _json[r'duration'] = duration;
    }
    if (estimatedDuration != null) {
      _json[r'estimatedDuration'] = estimatedDuration;
    }
    if (executor != null) {
      _json[r'executor'] = executor;
    }
    if (fullDisplayName != null) {
      _json[r'fullDisplayName'] = fullDisplayName;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (keepLog != null) {
      _json[r'keepLog'] = keepLog;
    }
    if (queueId != null) {
      _json[r'queueId'] = queueId;
    }
    if (result != null) {
      _json[r'result'] = result;
    }
    if (timestamp != null) {
      _json[r'timestamp'] = timestamp;
    }
    if (builtOn != null) {
      _json[r'builtOn'] = builtOn;
    }
    if (changeSet != null) {
      _json[r'changeSet'] = changeSet;
    }
    return _json;
  }

  /// Returns a new [FreeStyleBuild] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeStyleBuild? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FreeStyleBuild[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FreeStyleBuild[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FreeStyleBuild(
        class_: mapValueOfType<String>(json, r'_class'),
        number: mapValueOfType<int>(json, r'number'),
        url: mapValueOfType<String>(json, r'url'),
        actions: CauseAction.listFromJson(json[r'actions']) ?? const [],
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

  static List<FreeStyleBuild>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FreeStyleBuild>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FreeStyleBuild.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FreeStyleBuild> mapFromJson(dynamic json) {
    final map = <String, FreeStyleBuild>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FreeStyleBuild.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FreeStyleBuild-objects as value to a dart map
  static Map<String, List<FreeStyleBuild>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FreeStyleBuild>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FreeStyleBuild.listFromJson(entry.value, growable: growable,);
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

