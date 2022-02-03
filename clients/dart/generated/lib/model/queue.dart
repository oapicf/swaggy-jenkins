//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Queue {
  /// Returns a new [Queue] instance.
  Queue({
    this.class_,
    this.items = const [],
  });

  String class_;

  List<QueueBlockedItem> items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Queue &&
     other.class_ == class_ &&
     other.items == items;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (items == null ? 0 : items.hashCode);

  @override
  String toString() => 'Queue[class_=$class_, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (items != null) {
      json[r'items'] = items;
    }
    return json;
  }

  /// Returns a new [Queue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Queue fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Queue(
        class_: mapValueOfType<String>(json, r'_class'),
        items: QueueBlockedItem.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<Queue> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Queue.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Queue>[];

  static Map<String, Queue> mapFromJson(dynamic json) {
    final map = <String, Queue>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Queue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Queue-objects as value to a dart map
  static Map<String, List<Queue>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Queue>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Queue.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

