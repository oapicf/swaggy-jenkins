//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BranchImplpermissions {
  /// Returns a new [BranchImplpermissions] instance.
  BranchImplpermissions({
    this.create,
    this.read,
    this.start,
    this.stop,
    this.class_,
  });

  bool create;

  bool read;

  bool start;

  bool stop;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchImplpermissions &&
     other.create == create &&
     other.read == read &&
     other.start == start &&
     other.stop == stop &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (create == null ? 0 : create.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (start == null ? 0 : start.hashCode) +
    (stop == null ? 0 : stop.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'BranchImplpermissions[create=$create, read=$read, start=$start, stop=$stop, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (create != null) {
      json[r'create'] = create;
    }
    if (read != null) {
      json[r'read'] = read;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (stop != null) {
      json[r'stop'] = stop;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [BranchImplpermissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchImplpermissions fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BranchImplpermissions(
        create: mapValueOfType<bool>(json, r'create'),
        read: mapValueOfType<bool>(json, r'read'),
        start: mapValueOfType<bool>(json, r'start'),
        stop: mapValueOfType<bool>(json, r'stop'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<BranchImplpermissions> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(BranchImplpermissions.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <BranchImplpermissions>[];

  static Map<String, BranchImplpermissions> mapFromJson(dynamic json) {
    final map = <String, BranchImplpermissions>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = BranchImplpermissions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BranchImplpermissions-objects as value to a dart map
  static Map<String, List<BranchImplpermissions>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BranchImplpermissions>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = BranchImplpermissions.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

