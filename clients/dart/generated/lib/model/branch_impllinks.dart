//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BranchImpllinks {
  /// Returns a new [BranchImpllinks] instance.
  BranchImpllinks({
    this.self,
    this.actions,
    this.runs,
    this.queue,
    this.class_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? runs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? queue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchImpllinks &&
     other.self == self &&
     other.actions == actions &&
     other.runs == runs &&
     other.queue == queue &&
     other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (actions == null ? 0 : actions!.hashCode) +
    (runs == null ? 0 : runs!.hashCode) +
    (queue == null ? 0 : queue!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'BranchImpllinks[self=$self, actions=$actions, runs=$runs, queue=$queue, class_=$class_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (self != null) {
      _json[r'self'] = self;
    }
    if (actions != null) {
      _json[r'actions'] = actions;
    }
    if (runs != null) {
      _json[r'runs'] = runs;
    }
    if (queue != null) {
      _json[r'queue'] = queue;
    }
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    return _json;
  }

  /// Returns a new [BranchImpllinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchImpllinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BranchImpllinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BranchImpllinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BranchImpllinks(
        self: Link.fromJson(json[r'self']),
        actions: Link.fromJson(json[r'actions']),
        runs: Link.fromJson(json[r'runs']),
        queue: Link.fromJson(json[r'queue']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<BranchImpllinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchImpllinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchImpllinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BranchImpllinks> mapFromJson(dynamic json) {
    final map = <String, BranchImpllinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BranchImpllinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BranchImpllinks-objects as value to a dart map
  static Map<String, List<BranchImpllinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BranchImpllinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BranchImpllinks.listFromJson(entry.value, growable: growable,);
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

