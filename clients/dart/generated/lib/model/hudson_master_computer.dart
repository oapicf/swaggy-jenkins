//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HudsonMasterComputer {
  /// Returns a new [HudsonMasterComputer] instance.
  HudsonMasterComputer({
    this.class_,
    this.displayName,
    this.executors = const [],
    this.icon,
    this.iconClassName,
    this.idle,
    this.jnlpAgent,
    this.launchSupported,
    this.loadStatistics,
    this.manualLaunchAllowed,
    this.monitorData,
    this.numExecutors,
    this.offline,
    this.offlineCause,
    this.offlineCauseReason,
    this.temporarilyOffline,
  });

  String class_;

  String displayName;

  List<HudsonMasterComputerexecutors> executors;

  String icon;

  String iconClassName;

  bool idle;

  bool jnlpAgent;

  bool launchSupported;

  Label1 loadStatistics;

  bool manualLaunchAllowed;

  HudsonMasterComputermonitorData monitorData;

  int numExecutors;

  bool offline;

  String offlineCause;

  String offlineCauseReason;

  bool temporarilyOffline;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HudsonMasterComputer &&
     other.class_ == class_ &&
     other.displayName == displayName &&
     other.executors == executors &&
     other.icon == icon &&
     other.iconClassName == iconClassName &&
     other.idle == idle &&
     other.jnlpAgent == jnlpAgent &&
     other.launchSupported == launchSupported &&
     other.loadStatistics == loadStatistics &&
     other.manualLaunchAllowed == manualLaunchAllowed &&
     other.monitorData == monitorData &&
     other.numExecutors == numExecutors &&
     other.offline == offline &&
     other.offlineCause == offlineCause &&
     other.offlineCauseReason == offlineCauseReason &&
     other.temporarilyOffline == temporarilyOffline;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (executors == null ? 0 : executors.hashCode) +
    (icon == null ? 0 : icon.hashCode) +
    (iconClassName == null ? 0 : iconClassName.hashCode) +
    (idle == null ? 0 : idle.hashCode) +
    (jnlpAgent == null ? 0 : jnlpAgent.hashCode) +
    (launchSupported == null ? 0 : launchSupported.hashCode) +
    (loadStatistics == null ? 0 : loadStatistics.hashCode) +
    (manualLaunchAllowed == null ? 0 : manualLaunchAllowed.hashCode) +
    (monitorData == null ? 0 : monitorData.hashCode) +
    (numExecutors == null ? 0 : numExecutors.hashCode) +
    (offline == null ? 0 : offline.hashCode) +
    (offlineCause == null ? 0 : offlineCause.hashCode) +
    (offlineCauseReason == null ? 0 : offlineCauseReason.hashCode) +
    (temporarilyOffline == null ? 0 : temporarilyOffline.hashCode);

  @override
  String toString() => 'HudsonMasterComputer[class_=$class_, displayName=$displayName, executors=$executors, icon=$icon, iconClassName=$iconClassName, idle=$idle, jnlpAgent=$jnlpAgent, launchSupported=$launchSupported, loadStatistics=$loadStatistics, manualLaunchAllowed=$manualLaunchAllowed, monitorData=$monitorData, numExecutors=$numExecutors, offline=$offline, offlineCause=$offlineCause, offlineCauseReason=$offlineCauseReason, temporarilyOffline=$temporarilyOffline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (class_ != null) {
      json[r'_class'] = class_;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (executors != null) {
      json[r'executors'] = executors;
    }
    if (icon != null) {
      json[r'icon'] = icon;
    }
    if (iconClassName != null) {
      json[r'iconClassName'] = iconClassName;
    }
    if (idle != null) {
      json[r'idle'] = idle;
    }
    if (jnlpAgent != null) {
      json[r'jnlpAgent'] = jnlpAgent;
    }
    if (launchSupported != null) {
      json[r'launchSupported'] = launchSupported;
    }
    if (loadStatistics != null) {
      json[r'loadStatistics'] = loadStatistics;
    }
    if (manualLaunchAllowed != null) {
      json[r'manualLaunchAllowed'] = manualLaunchAllowed;
    }
    if (monitorData != null) {
      json[r'monitorData'] = monitorData;
    }
    if (numExecutors != null) {
      json[r'numExecutors'] = numExecutors;
    }
    if (offline != null) {
      json[r'offline'] = offline;
    }
    if (offlineCause != null) {
      json[r'offlineCause'] = offlineCause;
    }
    if (offlineCauseReason != null) {
      json[r'offlineCauseReason'] = offlineCauseReason;
    }
    if (temporarilyOffline != null) {
      json[r'temporarilyOffline'] = temporarilyOffline;
    }
    return json;
  }

  /// Returns a new [HudsonMasterComputer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HudsonMasterComputer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return HudsonMasterComputer(
        class_: mapValueOfType<String>(json, r'_class'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        executors: HudsonMasterComputerexecutors.listFromJson(json[r'executors']),
        icon: mapValueOfType<String>(json, r'icon'),
        iconClassName: mapValueOfType<String>(json, r'iconClassName'),
        idle: mapValueOfType<bool>(json, r'idle'),
        jnlpAgent: mapValueOfType<bool>(json, r'jnlpAgent'),
        launchSupported: mapValueOfType<bool>(json, r'launchSupported'),
        loadStatistics: Label1.fromJson(json[r'loadStatistics']),
        manualLaunchAllowed: mapValueOfType<bool>(json, r'manualLaunchAllowed'),
        monitorData: HudsonMasterComputermonitorData.fromJson(json[r'monitorData']),
        numExecutors: mapValueOfType<int>(json, r'numExecutors'),
        offline: mapValueOfType<bool>(json, r'offline'),
        offlineCause: mapValueOfType<String>(json, r'offlineCause'),
        offlineCauseReason: mapValueOfType<String>(json, r'offlineCauseReason'),
        temporarilyOffline: mapValueOfType<bool>(json, r'temporarilyOffline'),
      );
    }
    return null;
  }

  static List<HudsonMasterComputer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HudsonMasterComputer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HudsonMasterComputer>[];

  static Map<String, HudsonMasterComputer> mapFromJson(dynamic json) {
    final map = <String, HudsonMasterComputer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HudsonMasterComputer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HudsonMasterComputer-objects as value to a dart map
  static Map<String, List<HudsonMasterComputer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HudsonMasterComputer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HudsonMasterComputer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

