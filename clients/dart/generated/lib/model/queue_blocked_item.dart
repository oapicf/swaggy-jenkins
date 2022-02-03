//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  List<CauseAction> actions;

  bool blocked;

  bool buildable;

  int id;

  int inQueueSince;

  String params;

  bool stuck;

  FreeStyleProject task;

  String url;

  String why;

  int buildableStartMilliseconds;

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
    (class_ == null ? 0 : class_.hashCode) +
    (actions == null ? 0 : actions.hashCode) +
    (blocked == null ? 0 : blocked.hashCode) +
    (buildable == null ? 0 : buildable.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inQueueSince == null ? 0 : inQueueSince.hashCode) +
    (params == null ? 0 : params.hashCode) +
    (stuck == null ? 0 : stuck.hashCode) +
    (task == null ? 0 : task.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (why == null ? 0 : why.hashCode) +
    (buildableStartMilliseconds == null ? 0 : buildableStartMilliseconds.hashCode);

  @override
  String toString() => 'QueueBlockedItem[class_=$class_, actions=$actions, blocked=$blocked, buildable=$buildable, id=$id, inQueueSince=$inQueueSince, params=$params, stuck=$stuck, task=$task, url=$url, why=$why, buildableStartMilliseconds=$buildableStartMilliseconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (actions != null) {
      json[r'actions'] = actions;
    }
    if (blocked != null) {
      json[r'blocked'] = blocked;
    }
    if (buildable != null) {
      json[r'buildable'] = buildable;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (inQueueSince != null) {
      json[r'inQueueSince'] = inQueueSince;
    }
    if (params != null) {
      json[r'params'] = params;
    }
    if (stuck != null) {
      json[r'stuck'] = stuck;
    }
    if (task != null) {
      json[r'task'] = task;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (why != null) {
      json[r'why'] = why;
    }
    if (buildableStartMilliseconds != null) {
      json[r'buildableStartMilliseconds'] = buildableStartMilliseconds;
    }
    return json;
  }

  /// Returns a new [QueueBlockedItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueBlockedItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return QueueBlockedItem(
        class_: mapValueOfType<String>(json, r'_class'),
        actions: CauseAction.listFromJson(json[r'actions']),
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

  static List<QueueBlockedItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(QueueBlockedItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <QueueBlockedItem>[];

  static Map<String, QueueBlockedItem> mapFromJson(dynamic json) {
    final map = <String, QueueBlockedItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = QueueBlockedItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of QueueBlockedItem-objects as value to a dart map
  static Map<String, List<QueueBlockedItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<QueueBlockedItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = QueueBlockedItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

