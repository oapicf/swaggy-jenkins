//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtensionClassContainerImpl1links {
  /// Returns a new [ExtensionClassContainerImpl1links] instance.
  ExtensionClassContainerImpl1links({
    this.self,
    this.class_,
  });

  Link self;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtensionClassContainerImpl1links &&
     other.self == self &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'ExtensionClassContainerImpl1links[self=$self, class_=$class_]';

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

  /// Returns a new [ExtensionClassContainerImpl1links] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtensionClassContainerImpl1links fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ExtensionClassContainerImpl1links(
        self: Link.fromJson(json[r'self']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<ExtensionClassContainerImpl1links> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ExtensionClassContainerImpl1links.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ExtensionClassContainerImpl1links>[];

  static Map<String, ExtensionClassContainerImpl1links> mapFromJson(dynamic json) {
    final map = <String, ExtensionClassContainerImpl1links>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ExtensionClassContainerImpl1links.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExtensionClassContainerImpl1links-objects as value to a dart map
  static Map<String, List<ExtensionClassContainerImpl1links>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExtensionClassContainerImpl1links>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ExtensionClassContainerImpl1links.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

