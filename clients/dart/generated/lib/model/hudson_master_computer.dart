//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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
  String? displayName;

  List<HudsonMasterComputerexecutors> executors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconClassName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? jnlpAgent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? launchSupported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Label1? loadStatistics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? manualLaunchAllowed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HudsonMasterComputermonitorData? monitorData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numExecutors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? offline;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? offlineCause;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? offlineCauseReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? temporarilyOffline;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HudsonMasterComputer &&
    other.class_ == class_ &&
    other.displayName == displayName &&
    _deepEquality.equals(other.executors, executors) &&
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
    (class_ == null ? 0 : class_!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (executors.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (iconClassName == null ? 0 : iconClassName!.hashCode) +
    (idle == null ? 0 : idle!.hashCode) +
    (jnlpAgent == null ? 0 : jnlpAgent!.hashCode) +
    (launchSupported == null ? 0 : launchSupported!.hashCode) +
    (loadStatistics == null ? 0 : loadStatistics!.hashCode) +
    (manualLaunchAllowed == null ? 0 : manualLaunchAllowed!.hashCode) +
    (monitorData == null ? 0 : monitorData!.hashCode) +
    (numExecutors == null ? 0 : numExecutors!.hashCode) +
    (offline == null ? 0 : offline!.hashCode) +
    (offlineCause == null ? 0 : offlineCause!.hashCode) +
    (offlineCauseReason == null ? 0 : offlineCauseReason!.hashCode) +
    (temporarilyOffline == null ? 0 : temporarilyOffline!.hashCode);

  @override
  String toString() => 'HudsonMasterComputer[class_=$class_, displayName=$displayName, executors=$executors, icon=$icon, iconClassName=$iconClassName, idle=$idle, jnlpAgent=$jnlpAgent, launchSupported=$launchSupported, loadStatistics=$loadStatistics, manualLaunchAllowed=$manualLaunchAllowed, monitorData=$monitorData, numExecutors=$numExecutors, offline=$offline, offlineCause=$offlineCause, offlineCauseReason=$offlineCauseReason, temporarilyOffline=$temporarilyOffline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'_class'] = this.class_;
    } else {
      json[r'_class'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
      json[r'executors'] = this.executors;
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.iconClassName != null) {
      json[r'iconClassName'] = this.iconClassName;
    } else {
      json[r'iconClassName'] = null;
    }
    if (this.idle != null) {
      json[r'idle'] = this.idle;
    } else {
      json[r'idle'] = null;
    }
    if (this.jnlpAgent != null) {
      json[r'jnlpAgent'] = this.jnlpAgent;
    } else {
      json[r'jnlpAgent'] = null;
    }
    if (this.launchSupported != null) {
      json[r'launchSupported'] = this.launchSupported;
    } else {
      json[r'launchSupported'] = null;
    }
    if (this.loadStatistics != null) {
      json[r'loadStatistics'] = this.loadStatistics;
    } else {
      json[r'loadStatistics'] = null;
    }
    if (this.manualLaunchAllowed != null) {
      json[r'manualLaunchAllowed'] = this.manualLaunchAllowed;
    } else {
      json[r'manualLaunchAllowed'] = null;
    }
    if (this.monitorData != null) {
      json[r'monitorData'] = this.monitorData;
    } else {
      json[r'monitorData'] = null;
    }
    if (this.numExecutors != null) {
      json[r'numExecutors'] = this.numExecutors;
    } else {
      json[r'numExecutors'] = null;
    }
    if (this.offline != null) {
      json[r'offline'] = this.offline;
    } else {
      json[r'offline'] = null;
    }
    if (this.offlineCause != null) {
      json[r'offlineCause'] = this.offlineCause;
    } else {
      json[r'offlineCause'] = null;
    }
    if (this.offlineCauseReason != null) {
      json[r'offlineCauseReason'] = this.offlineCauseReason;
    } else {
      json[r'offlineCauseReason'] = null;
    }
    if (this.temporarilyOffline != null) {
      json[r'temporarilyOffline'] = this.temporarilyOffline;
    } else {
      json[r'temporarilyOffline'] = null;
    }
    return json;
  }

  /// Returns a new [HudsonMasterComputer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HudsonMasterComputer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HudsonMasterComputer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HudsonMasterComputer[$key]" has a null value in JSON.');
        });
        return true;
      }());

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

  static List<HudsonMasterComputer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HudsonMasterComputer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HudsonMasterComputer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HudsonMasterComputer> mapFromJson(dynamic json) {
    final map = <String, HudsonMasterComputer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HudsonMasterComputer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HudsonMasterComputer-objects as value to a dart map
  static Map<String, List<HudsonMasterComputer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HudsonMasterComputer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HudsonMasterComputer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

