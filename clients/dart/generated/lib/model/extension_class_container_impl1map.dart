//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtensionClassContainerImpl1map {
  /// Returns a new [ExtensionClassContainerImpl1map] instance.
  ExtensionClassContainerImpl1map({
    this.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl,
    this.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl,
    this.class_,
  });

  ExtensionClassImpl ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl;

  ExtensionClassImpl ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtensionClassContainerImpl1map &&
     other.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl == ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl &&
     other.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl == ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl &&
     other.class_ == class_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl == null ? 0 : ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl.hashCode) +
    (ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl == null ? 0 : ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'ExtensionClassContainerImpl1map[ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl=$ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl, ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl=$ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl != null) {
      json[r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl;
    }
    if (ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl != null) {
      json[r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [ExtensionClassContainerImpl1map] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtensionClassContainerImpl1map fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ExtensionClassContainerImpl1map(
        ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl: ExtensionClassImpl.fromJson(json[r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl']),
        ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl: ExtensionClassImpl.fromJson(json[r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<ExtensionClassContainerImpl1map> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ExtensionClassContainerImpl1map.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ExtensionClassContainerImpl1map>[];

  static Map<String, ExtensionClassContainerImpl1map> mapFromJson(dynamic json) {
    final map = <String, ExtensionClassContainerImpl1map>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ExtensionClassContainerImpl1map.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExtensionClassContainerImpl1map-objects as value to a dart map
  static Map<String, List<ExtensionClassContainerImpl1map>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExtensionClassContainerImpl1map>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ExtensionClassContainerImpl1map.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

