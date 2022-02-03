//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineImpllinks {
  /// Returns a new [PipelineImpllinks] instance.
  PipelineImpllinks({
    this.runs,
    this.self,
    this.queue,
    this.actions,
    this.class_,
  });

  Link runs;

  Link self;

  Link queue;

  Link actions;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineImpllinks &&
     other.runs == runs &&
     other.self == self &&
     other.queue == queue &&
     other.actions == actions &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (runs == null ? 0 : runs.hashCode) +
    (self == null ? 0 : self.hashCode) +
    (queue == null ? 0 : queue.hashCode) +
    (actions == null ? 0 : actions.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineImpllinks[runs=$runs, self=$self, queue=$queue, actions=$actions, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (runs != null) {
      json[r'runs'] = runs;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (queue != null) {
      json[r'queue'] = queue;
    }
    if (actions != null) {
      json[r'actions'] = actions;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineImpllinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineImpllinks fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineImpllinks(
        runs: Link.fromJson(json[r'runs']),
        self: Link.fromJson(json[r'self']),
        queue: Link.fromJson(json[r'queue']),
        actions: Link.fromJson(json[r'actions']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineImpllinks> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineImpllinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineImpllinks>[];

  static Map<String, PipelineImpllinks> mapFromJson(dynamic json) {
    final map = <String, PipelineImpllinks>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineImpllinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineImpllinks-objects as value to a dart map
  static Map<String, List<PipelineImpllinks>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineImpllinks>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineImpllinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

