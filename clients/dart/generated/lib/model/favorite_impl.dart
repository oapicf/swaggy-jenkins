//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FavoriteImpl {
  /// Returns a new [FavoriteImpl] instance.
  FavoriteImpl({
    this.class_,
    this.links,
    this.item,
  });

  String class_;

  FavoriteImpllinks links;

  PipelineImpl item;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FavoriteImpl &&
     other.class_ == class_ &&
     other.links == links &&
     other.item == item;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (item == null ? 0 : item.hashCode);

  @override
  String toString() => 'FavoriteImpl[class_=$class_, links=$links, item=$item]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (item != null) {
      json[r'item'] = item;
    }
    return json;
  }

  /// Returns a new [FavoriteImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FavoriteImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FavoriteImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        links: FavoriteImpllinks.fromJson(json[r'_links']),
        item: PipelineImpl.fromJson(json[r'item']),
      );
    }
    return null;
  }

  static List<FavoriteImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FavoriteImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FavoriteImpl>[];

  static Map<String, FavoriteImpl> mapFromJson(dynamic json) {
    final map = <String, FavoriteImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FavoriteImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FavoriteImpl-objects as value to a dart map
  static Map<String, List<FavoriteImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FavoriteImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FavoriteImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

