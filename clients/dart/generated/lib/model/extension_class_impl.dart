//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtensionClassImpl {
  /// Returns a new [ExtensionClassImpl] instance.
  ExtensionClassImpl({
    this.class_,
    this.links,
    this.classes = const [],
  });

  String class_;

  ExtensionClassImpllinks links;

  List<String> classes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtensionClassImpl &&
     other.class_ == class_ &&
     other.links == links &&
     other.classes == classes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (classes == null ? 0 : classes.hashCode);

  @override
  String toString() => 'ExtensionClassImpl[class_=$class_, links=$links, classes=$classes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (classes != null) {
      json[r'classes'] = classes;
    }
    return json;
  }

  /// Returns a new [ExtensionClassImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtensionClassImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ExtensionClassImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        links: ExtensionClassImpllinks.fromJson(json[r'_links']),
        classes: json[r'classes'] is List
          ? (json[r'classes'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<ExtensionClassImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ExtensionClassImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ExtensionClassImpl>[];

  static Map<String, ExtensionClassImpl> mapFromJson(dynamic json) {
    final map = <String, ExtensionClassImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ExtensionClassImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExtensionClassImpl-objects as value to a dart map
  static Map<String, List<ExtensionClassImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExtensionClassImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ExtensionClassImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

