//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineRunNode {
  /// Returns a new [PipelineRunNode] instance.
  PipelineRunNode({
    this.class_,
    this.displayName,
    this.durationInMillis,
    this.edges = const [],
    this.id,
    this.result,
    this.startTime,
    this.state,
  });

  String class_;

  String displayName;

  int durationInMillis;

  List<PipelineRunNodeedges> edges;

  String id;

  String result;

  String startTime;

  String state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineRunNode &&
     other.class_ == class_ &&
     other.displayName == displayName &&
     other.durationInMillis == durationInMillis &&
     other.edges == edges &&
     other.id == id &&
     other.result == result &&
     other.startTime == startTime &&
     other.state == state;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis.hashCode) +
    (edges == null ? 0 : edges.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (state == null ? 0 : state.hashCode);

  @override
  String toString() => 'PipelineRunNode[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, edges=$edges, id=$id, result=$result, startTime=$startTime, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (durationInMillis != null) {
      json[r'durationInMillis'] = durationInMillis;
    }
    if (edges != null) {
      json[r'edges'] = edges;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    if (startTime != null) {
      json[r'startTime'] = startTime;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    return json;
  }

  /// Returns a new [PipelineRunNode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRunNode fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineRunNode(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        edges: PipelineRunNodeedges.listFromJson(json[r'edges']),
        id: mapValueOfType<String>(json, r'id'),
        result: mapValueOfType<String>(json, r'result'),
        startTime: mapValueOfType<String>(json, r'startTime'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<PipelineRunNode> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineRunNode.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineRunNode>[];

  static Map<String, PipelineRunNode> mapFromJson(dynamic json) {
    final map = <String, PipelineRunNode>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineRunNode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineRunNode-objects as value to a dart map
  static Map<String, List<PipelineRunNode>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineRunNode>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineRunNode.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

