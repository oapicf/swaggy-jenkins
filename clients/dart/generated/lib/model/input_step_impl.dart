//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InputStepImpllinks? links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ok;

  List<StringParameterDefinition> parameters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InputStepImpl &&
    other.class_ == class_ &&
    other.links == links &&
    other.id == id &&
    other.message == message &&
    other.ok == ok &&
    _deepEquality.equals(other.parameters, parameters) &&
    other.submitter == submitter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (links == null ? 0 : links!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (parameters.hashCode) +
    (submitter == null ? 0 : submitter!.hashCode);

  @override
  String toString() => 'InputStepImpl[class_=$class_, links=$links, id=$id, message=$message, ok=$ok, parameters=$parameters, submitter=$submitter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
      json[r'parameters'] = this.parameters;
    if (this.submitter != null) {
      json[r'submitter'] = this.submitter;
    } else {
      json[r'submitter'] = null;
    }
    return json;
  }

  /// Returns a new [InputStepImpl] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InputStepImpl? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InputStepImpl[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InputStepImpl[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<InputStepImpl> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InputStepImpl>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InputStepImpl.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InputStepImpl> mapFromJson(dynamic json) {
    final map = <String, InputStepImpl>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InputStepImpl.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InputStepImpl-objects as value to a dart map
  static Map<String, List<InputStepImpl>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InputStepImpl>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InputStepImpl.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

