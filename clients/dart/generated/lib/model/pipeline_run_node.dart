//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationInMillis;

  List<PipelineRunNodeedges> edges;

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
  String? result;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

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
    (class_ == null ? 0 : class_!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis!.hashCode) +
    (edges.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'PipelineRunNode[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, edges=$edges, id=$id, result=$result, startTime=$startTime, state=$state]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (displayName != null) {
      _json[r'displayName'] = displayName;
    }
    if (durationInMillis != null) {
      _json[r'durationInMillis'] = durationInMillis;
    }
      _json[r'edges'] = edges;
    if (id != null) {
      _json[r'id'] = id;
    }
    if (result != null) {
      _json[r'result'] = result;
    }
    if (startTime != null) {
      _json[r'startTime'] = startTime;
    }
    if (state != null) {
      _json[r'state'] = state;
    }
    return _json;
  }

  /// Returns a new [PipelineRunNode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRunNode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineRunNode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineRunNode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelineRunNode(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        edges: PipelineRunNodeedges.listFromJson(json[r'edges']) ?? const [],
        id: mapValueOfType<String>(json, r'id'),
        result: mapValueOfType<String>(json, r'result'),
        startTime: mapValueOfType<String>(json, r'startTime'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<PipelineRunNode>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineRunNode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineRunNode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineRunNode> mapFromJson(dynamic json) {
    final map = <String, PipelineRunNode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineRunNode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineRunNode-objects as value to a dart map
  static Map<String, List<PipelineRunNode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineRunNode>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineRunNode.listFromJson(entry.value, growable: growable,);
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

