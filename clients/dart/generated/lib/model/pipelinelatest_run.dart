//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelinelatestRun {
  /// Returns a new [PipelinelatestRun] instance.
  PipelinelatestRun({
    this.artifacts = const [],
    this.durationInMillis,
    this.estimatedDurationInMillis,
    this.enQueueTime,
    this.endTime,
    this.id,
    this.organization,
    this.pipeline,
    this.result,
    this.runSummary,
    this.startTime,
    this.state,
    this.type,
    this.commitId,
    this.class_,
  });

  List<PipelinelatestRunartifacts> artifacts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationInMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estimatedDurationInMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? enQueueTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endTime;

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
  String? organization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pipeline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runSummary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commitId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelinelatestRun &&
    _deepEquality.equals(other.artifacts, artifacts) &&
    other.durationInMillis == durationInMillis &&
    other.estimatedDurationInMillis == estimatedDurationInMillis &&
    other.enQueueTime == enQueueTime &&
    other.endTime == endTime &&
    other.id == id &&
    other.organization == organization &&
    other.pipeline == pipeline &&
    other.result == result &&
    other.runSummary == runSummary &&
    other.startTime == startTime &&
    other.state == state &&
    other.type == type &&
    other.commitId == commitId &&
    other.class_ == class_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (artifacts.hashCode) +
    (durationInMillis == null ? 0 : durationInMillis!.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis!.hashCode) +
    (enQueueTime == null ? 0 : enQueueTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (pipeline == null ? 0 : pipeline!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (runSummary == null ? 0 : runSummary!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (commitId == null ? 0 : commitId!.hashCode) +
    (class_ == null ? 0 : class_!.hashCode);

  @override
  String toString() => 'PipelinelatestRun[artifacts=$artifacts, durationInMillis=$durationInMillis, estimatedDurationInMillis=$estimatedDurationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'artifacts'] = this.artifacts;
    if (this.durationInMillis != null) {
      json[r'durationInMillis'] = this.durationInMillis;
    } else {
      json[r'durationInMillis'] = null;
    }
    if (this.estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = this.estimatedDurationInMillis;
    } else {
      json[r'estimatedDurationInMillis'] = null;
    }
    if (this.enQueueTime != null) {
      json[r'enQueueTime'] = this.enQueueTime;
    } else {
      json[r'enQueueTime'] = null;
    }
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime;
    } else {
      json[r'endTime'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.pipeline != null) {
      json[r'pipeline'] = this.pipeline;
    } else {
      json[r'pipeline'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.runSummary != null) {
      json[r'runSummary'] = this.runSummary;
    } else {
      json[r'runSummary'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime;
    } else {
      json[r'startTime'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.commitId != null) {
      json[r'commitId'] = this.commitId;
    } else {
      json[r'commitId'] = null;
    }
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    return json;
  }

  /// Returns a new [PipelinelatestRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelinelatestRun? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelinelatestRun[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelinelatestRun[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelinelatestRun(
        artifacts: PipelinelatestRunartifacts.listFromJson(json[r'artifacts']),
        durationInMillis: mapValueOfType<int>(json, r'durationInMillis'),
        estimatedDurationInMillis: mapValueOfType<int>(json, r'estimatedDurationInMillis'),
        enQueueTime: mapValueOfType<String>(json, r'enQueueTime'),
        endTime: mapValueOfType<String>(json, r'endTime'),
        id: mapValueOfType<String>(json, r'id'),
        organization: mapValueOfType<String>(json, r'organization'),
        pipeline: mapValueOfType<String>(json, r'pipeline'),
        result: mapValueOfType<String>(json, r'result'),
        runSummary: mapValueOfType<String>(json, r'runSummary'),
        startTime: mapValueOfType<String>(json, r'startTime'),
        state: mapValueOfType<String>(json, r'state'),
        type: mapValueOfType<String>(json, r'type'),
        commitId: mapValueOfType<String>(json, r'commitId'),
        class_: mapValueOfType<String>(json, r'_class'),
      );
    }
    return null;
  }

  static List<PipelinelatestRun> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelinelatestRun>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelinelatestRun.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelinelatestRun> mapFromJson(dynamic json) {
    final map = <String, PipelinelatestRun>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelinelatestRun.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelinelatestRun-objects as value to a dart map
  static Map<String, List<PipelinelatestRun>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelinelatestRun>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PipelinelatestRun.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

