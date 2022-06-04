//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FavoriteImpllinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PipelineImpl? item;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FavoriteImpl &&
     other.class_ == class_ &&
     other.links == links &&
     other.item == item;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (item == null ? 0 : item!.hashCode);

  @override
  String toString() => 'FavoriteImpl[class_=$class_, links=$links, item=$item]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    if (links != null) {
      _json[r'_links'] = links;
    }
    if (item != null) {
      _json[r'item'] = item;
    }
    return _json;
  }

  /// Returns a new [FavoriteImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FavoriteImpl? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FavoriteImpl[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FavoriteImpl[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FavoriteImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        links: FavoriteImpllinks.fromJson(json[r'_links']),
        item: PipelineImpl.fromJson(json[r'item']),
      );
    }
    return null;
  }

  static List<FavoriteImpl>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FavoriteImpl>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FavoriteImpl.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FavoriteImpl> mapFromJson(dynamic json) {
    final map = <String, FavoriteImpl>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FavoriteImpl.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FavoriteImpl-objects as value to a dart map
  static Map<String, List<FavoriteImpl>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FavoriteImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FavoriteImpl.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

