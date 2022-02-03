//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PipelineBranchesitemlatestRun {
  /// Returns a new [PipelineBranchesitemlatestRun] instance.
  PipelineBranchesitemlatestRun({
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

  int durationInMillis;

  int estimatedDurationInMillis;

  String enQueueTime;

  String endTime;

  String id;

  String organization;

  String pipeline;

  String result;

  String runSummary;

  String startTime;

  String state;

  String type;

  String commitId;

  String class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineBranchesitemlatestRun &&
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
    (durationInMillis == null ? 0 : durationInMillis.hashCode) +
    (estimatedDurationInMillis == null ? 0 : estimatedDurationInMillis.hashCode) +
    (enQueueTime == null ? 0 : enQueueTime.hashCode) +
    (endTime == null ? 0 : endTime.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (pipeline == null ? 0 : pipeline.hashCode) +
    (result == null ? 0 : result.hashCode) +
    (runSummary == null ? 0 : runSummary.hashCode) +
    (startTime == null ? 0 : startTime.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (commitId == null ? 0 : commitId.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  @override
  String toString() => 'PipelineBranchesitemlatestRun[durationInMillis=$durationInMillis, estimatedDurationInMillis=$estimatedDurationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, class_=$class_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (durationInMillis != null) {
      json[r'durationInMillis'] = durationInMillis;
    }
    if (estimatedDurationInMillis != null) {
      json[r'estimatedDurationInMillis'] = estimatedDurationInMillis;
    }
    if (enQueueTime != null) {
      json[r'enQueueTime'] = enQueueTime;
    }
    if (endTime != null) {
      json[r'endTime'] = endTime;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (pipeline != null) {
      json[r'pipeline'] = pipeline;
    }
    if (result != null) {
      json[r'result'] = result;
    }
    if (runSummary != null) {
      json[r'runSummary'] = runSummary;
    }
    if (startTime != null) {
      json[r'startTime'] = startTime;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (commitId != null) {
      json[r'commitId'] = commitId;
    }
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    return json;
  }

  /// Returns a new [PipelineBranchesitemlatestRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineBranchesitemlatestRun fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PipelineBranchesitemlatestRun(
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

  static List<PipelineBranchesitemlatestRun> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PipelineBranchesitemlatestRun.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PipelineBranchesitemlatestRun>[];

  static Map<String, PipelineBranchesitemlatestRun> mapFromJson(dynamic json) {
    final map = <String, PipelineBranchesitemlatestRun>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PipelineBranchesitemlatestRun.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PipelineBranchesitemlatestRun-objects as value to a dart map
  static Map<String, List<PipelineBranchesitemlatestRun>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PipelineBranchesitemlatestRun>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PipelineBranchesitemlatestRun.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

