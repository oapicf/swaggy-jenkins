//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtensionClassContainerImpl1 {
  /// Returns a new [ExtensionClassContainerImpl1] instance.
  ExtensionClassContainerImpl1({
    this.class_,
    this.links,
    this.map,
  });

  String class_;

  ExtensionClassContainerImpl1links links;

  ExtensionClassContainerImpl1map map;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtensionClassContainerImpl1 &&
     other.class_ == class_ &&
     other.links == links &&
     other.map == map;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (map == null ? 0 : map.hashCode);

  @override
  String toString() => 'ExtensionClassContainerImpl1[class_=$class_, links=$links, map=$map]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (map != null) {
      json[r'map'] = map;
    }
    return json;
  }

  /// Returns a new [ExtensionClassContainerImpl1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtensionClassContainerImpl1 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ExtensionClassContainerImpl1(
        class_: mapValueOfType<String>(json, r'_class'),
        links: ExtensionClassContainerImpl1links.fromJson(json[r'_links']),
        map: ExtensionClassContainerImpl1map.fromJson(json[r'map']),
      );
    }
    return null;
  }

  static List<ExtensionClassContainerImpl1> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ExtensionClassContainerImpl1.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ExtensionClassContainerImpl1>[];

  static Map<String, ExtensionClassContainerImpl1> mapFromJson(dynamic json) {
    final map = <String, ExtensionClassContainerImpl1>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ExtensionClassContainerImpl1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExtensionClassContainerImpl1-objects as value to a dart map
  static Map<String, List<ExtensionClassContainerImpl1>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExtensionClassContainerImpl1>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ExtensionClassContainerImpl1.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

