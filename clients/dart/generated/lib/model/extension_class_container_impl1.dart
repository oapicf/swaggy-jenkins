//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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
  ExtensionClassContainerImpl1links? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ExtensionClassContainerImpl1map? map;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtensionClassContainerImpl1 &&
    other.class_ == class_ &&
    other.links == links &&
    other.map == map;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (map == null ? 0 : map!.hashCode);

  @override
  String toString() => 'ExtensionClassContainerImpl1[class_=$class_, links=$links, map=$map]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    if (this.map != null) {
      json[r'map'] = this.map;
    } else {
      json[r'map'] = null;
    }
    return json;
  }

  /// Returns a new [ExtensionClassContainerImpl1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtensionClassContainerImpl1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtensionClassContainerImpl1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtensionClassContainerImpl1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtensionClassContainerImpl1(
        class_: mapValueOfType<String>(json, r'_class'),
        links: ExtensionClassContainerImpl1links.fromJson(json[r'_links']),
        map: ExtensionClassContainerImpl1map.fromJson(json[r'map']),
      );
    }
    return null;
  }

  static List<ExtensionClassContainerImpl1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtensionClassContainerImpl1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtensionClassContainerImpl1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtensionClassContainerImpl1> mapFromJson(dynamic json) {
    final map = <String, ExtensionClassContainerImpl1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtensionClassContainerImpl1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtensionClassContainerImpl1-objects as value to a dart map
  static Map<String, List<ExtensionClassContainerImpl1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtensionClassContainerImpl1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtensionClassContainerImpl1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

