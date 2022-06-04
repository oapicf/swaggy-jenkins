//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueueBlockedItem {
  /// Returns a new [QueueBlockedItem] instance.
  QueueBlockedItem({
    this.class_,
    this.actions = const [],
    this.blocked,
    this.buildable,
    this.id,
    this.inQueueSince,
    this.params,
    this.stuck,
    this.task,
    this.url,
    this.why,
    this.buildableStartMilliseconds,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  List<CauseAction> actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? blocked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? buildable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inQueueSince;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? params;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stuck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleProject? task;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? why;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buildableStartMilliseconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueueBlockedItem &&
     other.class_ == class_ &&
     other.actions == actions &&
     other.blocked == blocked &&
     other.buildable == buildable &&
     other.id == id &&
     other.inQueueSince == inQueueSince &&
     other.params == params &&
     other.stuck == stuck &&
     other.task == task &&
     other.url == url &&
     other.why == why &&
     other.buildableStartMilliseconds == buildableStartMilliseconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (actions.hashCode) +
    (blocked == null ? 0 : blocked!.hashCode) +
    (buildable == null ? 0 : buildable!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (inQueueSince == null ? 0 : inQueueSince!.hashCode) +
    (params == null ? 0 : params!.hashCode) +
    (stuck == null ? 0 : stuck!.hashCode) +
    (task == null ? 0 : task!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (why == null ? 0 : why!.hashCode) +
    (buildableStartMilliseconds == null ? 0 : buildableStartMilliseconds!.hashCode);

  @override
  String toString() => 'QueueBlockedItem[class_=$class_, actions=$actions, blocked=$blocked, buildable=$buildable, id=$id, inQueueSince=$inQueueSince, params=$params, stuck=$stuck, task=$task, url=$url, why=$why, buildableStartMilliseconds=$buildableStartMilliseconds]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
      _json[r'actions'] = actions;
    if (blocked != null) {
      _json[r'blocked'] = blocked;
    }
    if (buildable != null) {
      _json[r'buildable'] = buildable;
    }
    if (id != null) {
      _json[r'id'] = id;
    }
    if (inQueueSince != null) {
      _json[r'inQueueSince'] = inQueueSince;
    }
    if (params != null) {
      _json[r'params'] = params;
    }
    if (stuck != null) {
      _json[r'stuck'] = stuck;
    }
    if (task != null) {
      _json[r'task'] = task;
    }
    if (url != null) {
      _json[r'url'] = url;
    }
    if (why != null) {
      _json[r'why'] = why;
    }
    if (buildableStartMilliseconds != null) {
      _json[r'buildableStartMilliseconds'] = buildableStartMilliseconds;
    }
    return _json;
  }

  /// Returns a new [QueueBlockedItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueBlockedItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueueBlockedItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueueBlockedItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueueBlockedItem(
        class_: mapValueOfType<String>(json, r'_class'),
        actions: CauseAction.listFromJson(json[r'actions']) ?? const [],
        blocked: mapValueOfType<bool>(json, r'blocked'),
        buildable: mapValueOfType<bool>(json, r'buildable'),
        id: mapValueOfType<int>(json, r'id'),
        inQueueSince: mapValueOfType<int>(json, r'inQueueSince'),
        params: mapValueOfType<String>(json, r'params'),
        stuck: mapValueOfType<bool>(json, r'stuck'),
        task: FreeStyleProject.fromJson(json[r'task']),
        url: mapValueOfType<String>(json, r'url'),
        why: mapValueOfType<String>(json, r'why'),
        buildableStartMilliseconds: mapValueOfType<int>(json, r'buildableStartMilliseconds'),
      );
    }
    return null;
  }

  static List<QueueBlockedItem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueueBlockedItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueueBlockedItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueueBlockedItem> mapFromJson(dynamic json) {
    final map = <String, QueueBlockedItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueBlockedItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueueBlockedItem-objects as value to a dart map
  static Map<String, List<QueueBlockedItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueueBlockedItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueBlockedItem.listFromJson(entry.value, growable: growable,);
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

