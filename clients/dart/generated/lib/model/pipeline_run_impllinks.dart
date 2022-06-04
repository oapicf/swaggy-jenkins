//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineRunImpllinks {
  /// Returns a new [PipelineRunImpllinks] instance.
  PipelineRunImpllinks({
    this.nodes,
    this.log,
    this.self,
    this.actions,
    this.steps,
    this.class_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? nodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? log;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? steps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineRunImpllinks &&
     other.nodes == nodes &&
     other.log == log &&
     other.self == self &&
     other.actions == actions &&
     other.steps == steps &&
     other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodes == null ? 0 : nodes!.hashCode) +
    (log == null ? 0 : log!.hashCode) +
    (self == null ? 0 : self!.hashCode) +
    (actions == null ? 0 : actions!.hashCode) +
    (steps == null ? 0 : steps!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'PipelineRunImpllinks[nodes=$nodes, log=$log, self=$self, actions=$actions, steps=$steps, class_=$class_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (nodes != null) {
      _json[r'nodes'] = nodes;
    }
    if (log != null) {
      _json[r'log'] = log;
    }
    if (self != null) {
      _json[r'self'] = self;
    }
    if (actions != null) {
      _json[r'actions'] = actions;
    }
    if (steps != null) {
      _json[r'steps'] = steps;
    }
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    return _json;
  }

  /// Returns a new [PipelineRunImpllinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRunImpllinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineRunImpllinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineRunImpllinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelineRunImpllinks(
        nodes: Link.fromJson(json[r'nodes']),
        log: Link.fromJson(json[r'log']),
        self: Link.fromJson(json[r'self']),
        actions: Link.fromJson(json[r'actions']),
        steps: Link.fromJson(json[r'steps']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineRunImpllinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineRunImpllinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineRunImpllinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineRunImpllinks> mapFromJson(dynamic json) {
    final map = <String, PipelineRunImpllinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineRunImpllinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineRunImpllinks-objects as value to a dart map
  static Map<String, List<PipelineRunImpllinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineRunImpllinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineRunImpllinks.listFromJson(entry.value, growable: growable,);
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

