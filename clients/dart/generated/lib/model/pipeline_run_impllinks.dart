//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  Link nodes;

  Link log;

  Link self;

  Link actions;

  Link steps;

  String class_;

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
    (nodes == null ? 0 : nodes.hashCode) +
    (log == null ? 0 : log.hashCode) +
    (self == null ? 0 : self.hashCode) +
    (actions == null ? 0 : actions.hashCode) +
    (steps == null ? 0 : steps.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineRunImpllinks[nodes=$nodes, log=$log, self=$self, actions=$actions, steps=$steps, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nodes != null) {
      json[r'nodes'] = nodes;
    }
    if (log != null) {
      json[r'log'] = log;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (actions != null) {
      json[r'actions'] = actions;
    }
    if (steps != null) {
      json[r'steps'] = steps;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineRunImpllinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRunImpllinks fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<PipelineRunImpllinks> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineRunImpllinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineRunImpllinks>[];

  static Map<String, PipelineRunImpllinks> mapFromJson(dynamic json) {
    final map = <String, PipelineRunImpllinks>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineRunImpllinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineRunImpllinks-objects as value to a dart map
  static Map<String, List<PipelineRunImpllinks>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineRunImpllinks>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineRunImpllinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

