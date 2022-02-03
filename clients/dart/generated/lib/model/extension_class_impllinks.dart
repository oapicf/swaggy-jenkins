//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtensionClassImpllinks {
  /// Returns a new [ExtensionClassImpllinks] instance.
  ExtensionClassImpllinks({
    this.self,
    this.class_,
  });

  Link self;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtensionClassImpllinks &&
     other.self == self &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'ExtensionClassImpllinks[self=$self, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [ExtensionClassImpllinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtensionClassImpllinks fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ExtensionClassImpllinks(
        self: Link.fromJson(json[r'self']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<ExtensionClassImpllinks> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ExtensionClassImpllinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ExtensionClassImpllinks>[];

  static Map<String, ExtensionClassImpllinks> mapFromJson(dynamic json) {
    final map = <String, ExtensionClassImpllinks>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ExtensionClassImpllinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExtensionClassImpllinks-objects as value to a dart map
  static Map<String, List<ExtensionClassImpllinks>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExtensionClassImpllinks>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ExtensionClassImpllinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

