//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputerSet {
  /// Returns a new [ComputerSet] instance.
  ComputerSet({
    this.class_,
    this.busyExecutors,
    this.computer = const [],
    this.displayName,
    this.totalExecutors,
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
  int? busyExecutors;

  List<HudsonMasterComputer> computer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalExecutors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputerSet &&
    other.class_ == class_ &&
    other.busyExecutors == busyExecutors &&
    _deepEquality.equals(other.computer, computer) &&
    other.displayName == displayName &&
    other.totalExecutors == totalExecutors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (busyExecutors == null ? 0 : busyExecutors!.hashCode) +
    (computer.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (totalExecutors == null ? 0 : totalExecutors!.hashCode);

  @override
  String toString() => 'ComputerSet[class_=$class_, busyExecutors=$busyExecutors, computer=$computer, displayName=$displayName, totalExecutors=$totalExecutors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.busyExecutors != null) {
      json[r'busyExecutors'] = this.busyExecutors;
    } else {
      json[r'busyExecutors'] = null;
    }
      json[r'computer'] = this.computer;
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.totalExecutors != null) {
      json[r'totalExecutors'] = this.totalExecutors;
    } else {
      json[r'totalExecutors'] = null;
    }
    return json;
  }

  /// Returns a new [ComputerSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputerSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputerSet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputerSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputerSet(
        class_: mapValueOfType<String>(json, r'_class'),
        busyExecutors: mapValueOfType<int>(json, r'busyExecutors'),
        computer: HudsonMasterComputer.listFromJson(json[r'computer']),
        displayName: mapValueOfType<String>(json, r'displayName'),
        totalExecutors: mapValueOfType<int>(json, r'totalExecutors'),
      );
    }
    return null;
  }

  static List<ComputerSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputerSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputerSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputerSet> mapFromJson(dynamic json) {
    final map = <String, ComputerSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputerSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputerSet-objects as value to a dart map
  static Map<String, List<ComputerSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputerSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputerSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

