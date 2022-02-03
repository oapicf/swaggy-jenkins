//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InputStepImpl {
  /// Returns a new [InputStepImpl] instance.
  InputStepImpl({
    this.class_,
    this.links,
    this.id,
    this.message,
    this.ok,
    this.parameters = const [],
    this.submitter,
  });

  String class_;

  InputStepImpllinks links;

  String id;

  String message;

  String ok;

  List<StringParameterDefinition> parameters;

  String submitter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InputStepImpl &&
     other.class_ == class_ &&
     other.links == links &&
     other.id == id &&
     other.message == message &&
     other.ok == ok &&
     other.parameters == parameters &&
     other.submitter == submitter;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (ok == null ? 0 : ok.hashCode) +
    (parameters == null ? 0 : parameters.hashCode) +
    (submitter == null ? 0 : submitter.hashCode);

  @override
  String toString() => 'InputStepImpl[class_=$class_, links=$links, id=$id, message=$message, ok=$ok, parameters=$parameters, submitter=$submitter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (ok != null) {
      json[r'ok'] = ok;
    }
    if (parameters != null) {
      json[r'parameters'] = parameters;
    }
    if (submitter != null) {
      json[r'submitter'] = submitter;
    }
    return json;
  }

  /// Returns a new [InputStepImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InputStepImpl fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InputStepImpl(
        class_: mapValueOfType<String>(json, r'_class'),
        links: InputStepImpllinks.fromJson(json[r'_links']),
        id: mapValueOfType<String>(json, r'id'),
        message: mapValueOfType<String>(json, r'message'),
        ok: mapValueOfType<String>(json, r'ok'),
        parameters: StringParameterDefinition.listFromJson(json[r'parameters']),
        submitter: mapValueOfType<String>(json, r'submitter'),
      );
    }
    return null;
  }

  static List<InputStepImpl> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InputStepImpl.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InputStepImpl>[];

  static Map<String, InputStepImpl> mapFromJson(dynamic json) {
    final map = <String, InputStepImpl>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InputStepImpl.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InputStepImpl-objects as value to a dart map
  static Map<String, List<InputStepImpl>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InputStepImpl>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InputStepImpl.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

