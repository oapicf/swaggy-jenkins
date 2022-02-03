//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineFolderImpl {
  /// Returns a new [PipelineFolderImpl] instance.
  PipelineFolderImpl({
    this.class_,
    this.displayName,
    this.fullName,
    this.name,
    this.organization,
    this.numberOfFolders,
    this.numberOfPipelines,
  });

  String class_;

  String displayName;

  String fullName;

  String name;

  String organization;

  int numberOfFolders;

  int numberOfPipelines;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineFolderImpl &&
     other.class_ == class_ &&
     other.displayName == displayName &&
     other.fullName == fullName &&
     other.name == name &&
     other.organization == organization &&
     other.numberOfFolders == numberOfFolders &&
     other.numberOfPipelines == numberOfPipelines;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (fullName == null ? 0 : fullName.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (numberOfFolders == null ? 0 : numberOfFolders.hashCode) +
    (numberOfPipelines == null ? 0 : numberOfPipelines.hashCode);

  @override
  String toString() => 'PipelineFolderImpl[class_=$class_, displayName=$displayName, fullName=$fullName, name=$name, organization=$organization, numberOfFolders=$numberOfFolders, numberOfPipelines=$numberOfPipelines]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (numberOfFolders != null) {
      json[r'numberOfFolders'] = numberOfFolders;
    }
    if (numberOfPipelines != null) {
      json[r'numberOfPipelines'] = numberOfPipelines;
    }
    return json;
  }

  /// Returns a new [PipelineFolderImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineFolderImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineFolderImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        numberOfFolders: mapValueOfType<int>(json, r'numberOfFolders'),
        numberOfPipelines: mapValueOfType<int>(json, r'numberOfPipelines'),
      );
    }
    return null;
  }

  static List<PipelineFolderImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineFolderImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineFolderImpl>[];

  static Map<String, PipelineFolderImpl> mapFromJson(dynamic json) {
    final map = <String, PipelineFolderImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineFolderImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineFolderImpl-objects as value to a dart map
  static Map<String, List<PipelineFolderImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineFolderImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineFolderImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

