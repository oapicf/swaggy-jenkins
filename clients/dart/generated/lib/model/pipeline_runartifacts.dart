//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineRunartifacts {
  /// Returns a new [PipelineRunartifacts] instance.
  PipelineRunartifacts({
    this.name,
    this.size,
    this.url,
    this.class_,
  });

  String name;

  int size;

  String url;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineRunartifacts &&
     other.name == name &&
     other.size == size &&
     other.url == url &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineRunartifacts[name=$name, size=$size, url=$url, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineRunartifacts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineRunartifacts fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineRunartifacts(
        name: mapValueOfType<String>(json, r'name'),
        size: mapValueOfType<int>(json, r'size'),
        url: mapValueOfType<String>(json, r'url'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelineRunartifacts> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineRunartifacts.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineRunartifacts>[];

  static Map<String, PipelineRunartifacts> mapFromJson(dynamic json) {
    final map = <String, PipelineRunartifacts>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineRunartifacts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineRunartifacts-objects as value to a dart map
  static Map<String, List<PipelineRunartifacts>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineRunartifacts>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineRunartifacts.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

