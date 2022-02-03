//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListView {
  /// Returns a new [ListView] instance.
  ListView({
    this.class_,
    this.description,
    this.jobs = const [],
    this.name,
    this.url,
  });

  String class_;

  String description;

  List<FreeStyleProject> jobs;

  String name;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListView &&
     other.class_ == class_ &&
     other.description == description &&
     other.jobs == jobs &&
     other.name == name &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (jobs == null ? 0 : jobs.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'ListView[class_=$class_, description=$description, jobs=$jobs, name=$name, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (jobs != null) {
      json[r'jobs'] = jobs;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [ListView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListView fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ListView(
        class_: mapValueOfType<String>(json, r'_class'),
        description: mapValueOfType<String>(json, r'description'),
        jobs: FreeStyleProject.listFromJson(json[r'jobs']),
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ListView> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ListView.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ListView>[];

  static Map<String, ListView> mapFromJson(dynamic json) {
    final map = <String, ListView>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ListView.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListView-objects as value to a dart map
  static Map<String, List<ListView>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ListView>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ListView.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

