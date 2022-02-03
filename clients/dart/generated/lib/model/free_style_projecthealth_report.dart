//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FreeStyleProjecthealthReport {
  /// Returns a new [FreeStyleProjecthealthReport] instance.
  FreeStyleProjecthealthReport({
    this.description,
    this.iconClassName,
    this.iconUrl,
    this.score,
    this.class_,
  });

  String description;

  String iconClassName;

  String iconUrl;

  int score;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FreeStyleProjecthealthReport &&
     other.description == description &&
     other.iconClassName == iconClassName &&
     other.iconUrl == iconUrl &&
     other.score == score &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (description == null ? 0 : description.hashCode) +
    (iconClassName == null ? 0 : iconClassName.hashCode) +
    (iconUrl == null ? 0 : iconUrl.hashCode) +
    (score == null ? 0 : score.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'FreeStyleProjecthealthReport[description=$description, iconClassName=$iconClassName, iconUrl=$iconUrl, score=$score, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (description != null) {
      json[r'description'] = description;
    }
    if (iconClassName != null) {
      json[r'iconClassName'] = iconClassName;
    }
    if (iconUrl != null) {
      json[r'iconUrl'] = iconUrl;
    }
    if (score != null) {
      json[r'score'] = score;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [FreeStyleProjecthealthReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FreeStyleProjecthealthReport fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FreeStyleProjecthealthReport(
        description: mapValueOfType<String>(json, r'description'),
        iconClassName: mapValueOfType<String>(json, r'iconClassName'),
        iconUrl: mapValueOfType<String>(json, r'iconUrl'),
        score: mapValueOfType<int>(json, r'score'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<FreeStyleProjecthealthReport> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FreeStyleProjecthealthReport.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FreeStyleProjecthealthReport>[];

  static Map<String, FreeStyleProjecthealthReport> mapFromJson(dynamic json) {
    final map = <String, FreeStyleProjecthealthReport>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FreeStyleProjecthealthReport.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FreeStyleProjecthealthReport-objects as value to a dart map
  static Map<String, List<FreeStyleProjecthealthReport>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FreeStyleProjecthealthReport>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FreeStyleProjecthealthReport.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

