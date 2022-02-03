//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    this.class_,
    this.id,
    this.fullName,
    this.email,
    this.name,
  });

  String class_;

  String id;

  String fullName;

  String email;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.class_ == class_ &&
     other.id == id &&
     other.fullName == fullName &&
     other.email == email &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (fullName == null ? 0 : fullName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'User[class_=$class_, id=$id, fullName=$fullName, email=$email, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return User(
        class_: mapValueOfType<String>(json, r'_class'),
        id: mapValueOfType<String>(json, r'id'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<User> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(User.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <User>[];

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = User.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

