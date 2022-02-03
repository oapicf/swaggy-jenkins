//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DefaultCrumbIssuer {
  /// Returns a new [DefaultCrumbIssuer] instance.
  DefaultCrumbIssuer({
    this.class_,
    this.crumb,
    this.crumbRequestField,
  });

  String class_;

  String crumb;

  String crumbRequestField;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DefaultCrumbIssuer &&
     other.class_ == class_ &&
     other.crumb == crumb &&
     other.crumbRequestField == crumbRequestField;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (crumb == null ? 0 : crumb.hashCode) +
    (crumbRequestField == null ? 0 : crumbRequestField.hashCode);

  @override
  String toString() => 'DefaultCrumbIssuer[class_=$class_, crumb=$crumb, crumbRequestField=$crumbRequestField]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (crumb != null) {
      json[r'crumb'] = crumb;
    }
    if (crumbRequestField != null) {
      json[r'crumbRequestField'] = crumbRequestField;
    }
    return json;
  }

  /// Returns a new [DefaultCrumbIssuer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DefaultCrumbIssuer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DefaultCrumbIssuer(
        class_: mapValueOfType<String>(json, r'_class'),
        crumb: mapValueOfType<String>(json, r'crumb'),
        crumbRequestField: mapValueOfType<String>(json, r'crumbRequestField'),
      );
    }
    return null;
  }

  static List<DefaultCrumbIssuer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DefaultCrumbIssuer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DefaultCrumbIssuer>[];

  static Map<String, DefaultCrumbIssuer> mapFromJson(dynamic json) {
    final map = <String, DefaultCrumbIssuer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DefaultCrumbIssuer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DefaultCrumbIssuer-objects as value to a dart map
  static Map<String, List<DefaultCrumbIssuer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DefaultCrumbIssuer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DefaultCrumbIssuer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

