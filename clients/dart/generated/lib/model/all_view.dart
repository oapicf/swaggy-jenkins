//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AllView {
  /// Returns a new [AllView] instance.
  AllView({
    this.class_,
    this.name,
    this.url,
  });

  String class_;

  String name;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AllView &&
     other.class_ == class_ &&
     other.name == name &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'AllView[class_=$class_, name=$name, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [AllView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AllView fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AllView(
        class_: mapValueOfType<String>(json, r'_class'),
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<AllView> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AllView.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AllView>[];

  static Map<String, AllView> mapFromJson(dynamic json) {
    final map = <String, AllView>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AllView.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AllView-objects as value to a dart map
  static Map<String, List<AllView>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AllView>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AllView.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

