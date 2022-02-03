//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  FreeStyleBuild currentExecutable;

  bool idle;

  bool likelyStuck;

  int number;

  int progress;

  String class_;

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
    (currentExecutable == null ? 0 : currentExecutable.hashCode) +
    (idle == null ? 0 : idle.hashCode) +
    (likelyStuck == null ? 0 : likelyStuck.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (progress == null ? 0 : progress.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'HudsonMasterComputerexecutors[currentExecutable=$currentExecutable, idle=$idle, likelyStuck=$likelyStuck, number=$number, progress=$progress, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (currentExecutable != null) {
      json[r'currentExecutable'] = currentExecutable;
    }
    if (idle != null) {
      json[r'idle'] = idle;
    }
    if (likelyStuck != null) {
      json[r'likelyStuck'] = likelyStuck;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    if (progress != null) {
      json[r'progress'] = progress;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [HudsonMasterComputerexecutors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HudsonMasterComputerexecutors fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<HudsonMasterComputerexecutors> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HudsonMasterComputerexecutors.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HudsonMasterComputerexecutors>[];

  static Map<String, HudsonMasterComputerexecutors> mapFromJson(dynamic json) {
    final map = <String, HudsonMasterComputerexecutors>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HudsonMasterComputerexecutors.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HudsonMasterComputerexecutors-objects as value to a dart map
  static Map<String, List<HudsonMasterComputerexecutors>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HudsonMasterComputerexecutors>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HudsonMasterComputerexecutors.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

