//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineStepImpl {
  /// Returns a new [PipelineStepImpl] instance.
  PipelineStepImpl({
    this.class_,
    this.links,
    this.displayName,
    this.durationInMillis,
    this.id,
    this.input,
    this.result,
    this.startTime,
    this.state,
  });

  String class_;

  PipelineStepImpllinks links;

  String displayName;

  int durationInMillis;

  String id;

  InputStepImpl input;

  String result;

  String startTime;

  String state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineStepImpl &&
     other.class_ == class_ &&
     other.links == links &&
     other.displayName == displayName &&
     other.durationInMillis == durationInMillis &&
     other.id == id &&
     other.input == input &&
     other.result == result &&
     other.startTime == startTime &&
     other.state == state;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (input == null ? 0 : input.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (state == null ? 0 : state.hashCode);

  @override
  String toString() => 'PipelineStepImpl[class_=$class_, links=$links, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, input=$input, result=$result, startTime=$startTime, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (durationInMillis != null) {
      json[r'durationInMillis'] = durationInMillis;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (input != null) {
      json[r'input'] = input;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    if (startTime != null) {
      json[r'startTime'] = startTime;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    return json;
  }

  /// Returns a new [PipelineStepImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineStepImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineStepImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        links: PipelineStepImpllinks.fromJson(json[r'_links']),
        displayName: mapValueOfType<String>(json, r'displayName'),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        id: mapValueOfType<String>(json, r'id'),
        input: InputStepImpl.fromJson(json[r'input']),
        result: mapValueOfType<String>(json, r'result'),
        startTime: mapValueOfType<String>(json, r'startTime'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<PipelineStepImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineStepImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineStepImpl>[];

  static Map<String, PipelineStepImpl> mapFromJson(dynamic json) {
    final map = <String, PipelineStepImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineStepImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineStepImpl-objects as value to a dart map
  static Map<String, List<PipelineStepImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineStepImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineStepImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

