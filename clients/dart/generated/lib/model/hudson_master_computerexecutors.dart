//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HudsonMasterComputerexecutors {
  /// Returns a new [HudsonMasterComputerexecutors] instance.
  HudsonMasterComputerexecutors({
    this.currentExecutable,
    this.idle,
    this.likelyStuck,
    this.number,
    this.progress,
    this.class_,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeStyleBuild? currentExecutable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? likelyStuck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? progress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HudsonMasterComputerexecutors &&
     other.currentExecutable == currentExecutable &&
     other.idle == idle &&
     other.likelyStuck == likelyStuck &&
     other.number == number &&
     other.progress == progress &&
     other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentExecutable == null ? 0 : currentExecutable!.hashCode) +
    (idle == null ? 0 : idle!.hashCode) +
    (likelyStuck == null ? 0 : likelyStuck!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (progress == null ? 0 : progress!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'HudsonMasterComputerexecutors[currentExecutable=$currentExecutable, idle=$idle, likelyStuck=$likelyStuck, number=$number, progress=$progress, class_=$class_]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (currentExecutable != null) {
      _json[r'currentExecutable'] = currentExecutable;
    }
    if (idle != null) {
      _json[r'idle'] = idle;
    }
    if (likelyStuck != null) {
      _json[r'likelyStuck'] = likelyStuck;
    }
    if (number != null) {
      _json[r'number'] = number;
    }
    if (progress != null) {
      _json[r'progress'] = progress;
    }
    if (class_ != null) {
      _json[r'_class'] = class_;
    }
    return _json;
  }

  /// Returns a new [HudsonMasterComputerexecutors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HudsonMasterComputerexecutors? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HudsonMasterComputerexecutors[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HudsonMasterComputerexecutors[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HudsonMasterComputerexecutors(
        currentExecutable: FreeStyleBuild.fromJson(json[r'currentExecutable']),
        idle: mapValueOfType<bool>(json, r'idle'),
        likelyStuck: mapValueOfType<bool>(json, r'likelyStuck'),
        number: mapValueOfType<int>(json, r'number'),
        progress: mapValueOfType<int>(json, r'progress'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<HudsonMasterComputerexecutors>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HudsonMasterComputerexecutors>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HudsonMasterComputerexecutors.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HudsonMasterComputerexecutors> mapFromJson(dynamic json) {
    final map = <String, HudsonMasterComputerexecutors>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HudsonMasterComputerexecutors.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HudsonMasterComputerexecutors-objects as value to a dart map
  static Map<String, List<HudsonMasterComputerexecutors>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HudsonMasterComputerexecutors>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HudsonMasterComputerexecutors.listFromJson(entry.value, growable: growable,);
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

