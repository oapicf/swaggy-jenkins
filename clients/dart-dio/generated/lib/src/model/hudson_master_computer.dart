//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/label1.dart';
import 'package:openapi/src/model/hudson_master_computerexecutors.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/hudson_master_computermonitor_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computer.g.dart';

/// HudsonMasterComputer
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [executors] 
/// * [icon] 
/// * [iconClassName] 
/// * [idle] 
/// * [jnlpAgent] 
/// * [launchSupported] 
/// * [loadStatistics] 
/// * [manualLaunchAllowed] 
/// * [monitorData] 
/// * [numExecutors] 
/// * [offline] 
/// * [offlineCause] 
/// * [offlineCauseReason] 
/// * [temporarilyOffline] 
@BuiltValue()
abstract class HudsonMasterComputer implements Built<HudsonMasterComputer, HudsonMasterComputerBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'executors')
  BuiltList<HudsonMasterComputerexecutors>? get executors;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'iconClassName')
  String? get iconClassName;

  @BuiltValueField(wireName: r'idle')
  bool? get idle;

  @BuiltValueField(wireName: r'jnlpAgent')
  bool? get jnlpAgent;

  @BuiltValueField(wireName: r'launchSupported')
  bool? get launchSupported;

  @BuiltValueField(wireName: r'loadStatistics')
  Label1? get loadStatistics;

  @BuiltValueField(wireName: r'manualLaunchAllowed')
  bool? get manualLaunchAllowed;

  @BuiltValueField(wireName: r'monitorData')
  HudsonMasterComputermonitorData? get monitorData;

  @BuiltValueField(wireName: r'numExecutors')
  int? get numExecutors;

  @BuiltValueField(wireName: r'offline')
  bool? get offline;

  @BuiltValueField(wireName: r'offlineCause')
  String? get offlineCause;

  @BuiltValueField(wireName: r'offlineCauseReason')
  String? get offlineCauseReason;

  @BuiltValueField(wireName: r'temporarilyOffline')
  bool? get temporarilyOffline;

  HudsonMasterComputer._();

  factory HudsonMasterComputer([void updates(HudsonMasterComputerBuilder b)]) = _$HudsonMasterComputer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HudsonMasterComputerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HudsonMasterComputer> get serializer => _$HudsonMasterComputerSerializer();
}

class _$HudsonMasterComputerSerializer implements PrimitiveSerializer<HudsonMasterComputer> {
  @override
  final Iterable<Type> types = const [HudsonMasterComputer, _$HudsonMasterComputer];

  @override
  final String wireName = r'HudsonMasterComputer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HudsonMasterComputer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.executors != null) {
      yield r'executors';
      yield serializers.serialize(
        object.executors,
        specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputerexecutors)]),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.iconClassName != null) {
      yield r'iconClassName';
      yield serializers.serialize(
        object.iconClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.idle != null) {
      yield r'idle';
      yield serializers.serialize(
        object.idle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.jnlpAgent != null) {
      yield r'jnlpAgent';
      yield serializers.serialize(
        object.jnlpAgent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.launchSupported != null) {
      yield r'launchSupported';
      yield serializers.serialize(
        object.launchSupported,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadStatistics != null) {
      yield r'loadStatistics';
      yield serializers.serialize(
        object.loadStatistics,
        specifiedType: const FullType(Label1),
      );
    }
    if (object.manualLaunchAllowed != null) {
      yield r'manualLaunchAllowed';
      yield serializers.serialize(
        object.manualLaunchAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitorData != null) {
      yield r'monitorData';
      yield serializers.serialize(
        object.monitorData,
        specifiedType: const FullType(HudsonMasterComputermonitorData),
      );
    }
    if (object.numExecutors != null) {
      yield r'numExecutors';
      yield serializers.serialize(
        object.numExecutors,
        specifiedType: const FullType(int),
      );
    }
    if (object.offline != null) {
      yield r'offline';
      yield serializers.serialize(
        object.offline,
        specifiedType: const FullType(bool),
      );
    }
    if (object.offlineCause != null) {
      yield r'offlineCause';
      yield serializers.serialize(
        object.offlineCause,
        specifiedType: const FullType(String),
      );
    }
    if (object.offlineCauseReason != null) {
      yield r'offlineCauseReason';
      yield serializers.serialize(
        object.offlineCauseReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.temporarilyOffline != null) {
      yield r'temporarilyOffline';
      yield serializers.serialize(
        object.temporarilyOffline,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HudsonMasterComputer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HudsonMasterComputerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.class_ = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'executors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(HudsonMasterComputerexecutors)]),
          ) as BuiltList<HudsonMasterComputerexecutors>?;
          if (valueDes == null) continue;
          result.executors.replace(valueDes);
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'iconClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iconClassName = valueDes;
          break;
        case r'idle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.idle = valueDes;
          break;
        case r'jnlpAgent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.jnlpAgent = valueDes;
          break;
        case r'launchSupported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.launchSupported = valueDes;
          break;
        case r'loadStatistics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Label1),
          ) as Label1?;
          if (valueDes == null) continue;
          result.loadStatistics.replace(valueDes);
          break;
        case r'manualLaunchAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.manualLaunchAllowed = valueDes;
          break;
        case r'monitorData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HudsonMasterComputermonitorData),
          ) as HudsonMasterComputermonitorData?;
          if (valueDes == null) continue;
          result.monitorData.replace(valueDes);
          break;
        case r'numExecutors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numExecutors = valueDes;
          break;
        case r'offline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.offline = valueDes;
          break;
        case r'offlineCause':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.offlineCause = valueDes;
          break;
        case r'offlineCauseReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.offlineCauseReason = valueDes;
          break;
        case r'temporarilyOffline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.temporarilyOffline = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HudsonMasterComputer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HudsonMasterComputerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

