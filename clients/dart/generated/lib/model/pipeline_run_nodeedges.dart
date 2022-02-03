//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineRunNodeedges {
  /// Returns a new [PipelineRunNodeedges] instance.
  PipelineRunNodeedges({
    this.id,
    this.class_,
  });

  String id;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineRunNodeedges &&
     other.id == id &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineRunNodeedges[id=$id, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineRunNodeedges] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRunNodeedges fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineRunNodeedges(
        id: mapValueOfType<String>(json, r'id'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineRunNodeedges> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineRunNodeedges.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineRunNodeedges>[];

  static Map<String, PipelineRunNodeedges> mapFromJson(dynamic json) {
    final map = <String, PipelineRunNodeedges>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineRunNodeedges.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineRunNodeedges-objects as value to a dart map
  static Map<String, List<PipelineRunNodeedges>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineRunNodeedges>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineRunNodeedges.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

