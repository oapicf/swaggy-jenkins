//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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

  String class_;

  int busyExecutors;

  List<HudsonMasterComputer> computer;

  String displayName;

  int totalExecutors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputerSet &&
     other.class_ == class_ &&
     other.busyExecutors == busyExecutors &&
     other.computer == computer &&
     other.displayName == displayName &&
     other.totalExecutors == totalExecutors;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (busyExecutors == null ? 0 : busyExecutors.hashCode) +
    (computer == null ? 0 : computer.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (totalExecutors == null ? 0 : totalExecutors.hashCode);

  @override
  String toString() => 'ComputerSet[class_=$class_, busyExecutors=$busyExecutors, computer=$computer, displayName=$displayName, totalExecutors=$totalExecutors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (busyExecutors != null) {
      json[r'busyExecutors'] = busyExecutors;
    }
    if (computer != null) {
      json[r'computer'] = computer;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (totalExecutors != null) {
      json[r'totalExecutors'] = totalExecutors;
    }
    return json;
  }

  /// Returns a new [ComputerSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputerSet fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<ComputerSet> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ComputerSet.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ComputerSet>[];

  static Map<String, ComputerSet> mapFromJson(dynamic json) {
    final map = <String, ComputerSet>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ComputerSet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ComputerSet-objects as value to a dart map
  static Map<String, List<ComputerSet>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ComputerSet>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ComputerSet.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

