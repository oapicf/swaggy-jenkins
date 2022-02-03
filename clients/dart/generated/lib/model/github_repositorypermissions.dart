//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GithubRepositorypermissions {
  /// Returns a new [GithubRepositorypermissions] instance.
  GithubRepositorypermissions({
    this.admin,
    this.push,
    this.pull,
    this.class_,
  });

  bool admin;

  bool push;

  bool pull;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubRepositorypermissions &&
     other.admin == admin &&
     other.push == push &&
     other.pull == pull &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (admin == null ? 0 : admin.hashCode) +
    (push == null ? 0 : push.hashCode) +
    (pull == null ? 0 : pull.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'GithubRepositorypermissions[admin=$admin, push=$push, pull=$pull, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (admin != null) {
      json[r'admin'] = admin;
    }
    if (push != null) {
      json[r'push'] = push;
    }
    if (pull != null) {
      json[r'pull'] = pull;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [GithubRepositorypermissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRepositorypermissions fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GithubRepositorypermissions(
        admin: mapValueOfType<bool>(json, r'admin'),
        push: mapValueOfType<bool>(json, r'push'),
        pull: mapValueOfType<bool>(json, r'pull'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<GithubRepositorypermissions> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GithubRepositorypermissions.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GithubRepositorypermissions>[];

  static Map<String, GithubRepositorypermissions> mapFromJson(dynamic json) {
    final map = <String, GithubRepositorypermissions>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GithubRepositorypermissions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GithubRepositorypermissions-objects as value to a dart map
  static Map<String, List<GithubRepositorypermissions>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GithubRepositorypermissions>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GithubRepositorypermissions.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

