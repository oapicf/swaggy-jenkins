//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineStepImpllinks {
  /// Returns a new [PipelineStepImpllinks] instance.
  PipelineStepImpllinks({
    this.self,
    this.actions,
    this.class_,
  });

  Link self;

  Link actions;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineStepImpllinks &&
     other.self == self &&
     other.actions == actions &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (actions == null ? 0 : actions.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineStepImpllinks[self=$self, actions=$actions, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (actions != null) {
      json[r'actions'] = actions;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineStepImpllinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineStepImpllinks fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineStepImpllinks(
        self: Link.fromJson(json[r'self']),
        actions: Link.fromJson(json[r'actions']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineStepImpllinks> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineStepImpllinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineStepImpllinks>[];

  static Map<String, PipelineStepImpllinks> mapFromJson(dynamic json) {
    final map = <String, PipelineStepImpllinks>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineStepImpllinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineStepImpllinks-objects as value to a dart map
  static Map<String, List<PipelineStepImpllinks>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineStepImpllinks>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineStepImpllinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

