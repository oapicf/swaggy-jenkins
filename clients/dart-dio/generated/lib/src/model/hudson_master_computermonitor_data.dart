//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/response_time_monitor_data.dart';
import 'package:openapi/src/model/swap_space_monitor_memory_usage2.dart';
import 'package:openapi/src/model/disk_space_monitor_descriptor_disk_space.dart';
import 'package:openapi/src/model/clock_difference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computermonitor_data.g.dart';

/// HudsonMasterComputermonitorData
///
/// Properties:
/// * [hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor] 
/// * [hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor] 
/// * [hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor] 
/// * [hudsonPeriodNodeMonitorsPeriodArchitectureMonitor] 
/// * [hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor] 
/// * [hudsonPeriodNodeMonitorsPeriodClockMonitor] 
/// * [class_] 
@BuiltValue()
abstract class HudsonMasterComputermonitorData implements Built<HudsonMasterComputermonitorData, HudsonMasterComputermonitorDataBuilder> {
  @BuiltValueField(wireName: r'hudson.node_monitors.SwapSpaceMonitor')
  SwapSpaceMonitorMemoryUsage2? get hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;

  @BuiltValueField(wireName: r'hudson.node_monitors.TemporarySpaceMonitor')
  DiskSpaceMonitorDescriptorDiskSpace? get hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;

  @BuiltValueField(wireName: r'hudson.node_monitors.DiskSpaceMonitor')
  DiskSpaceMonitorDescriptorDiskSpace? get hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;

  @BuiltValueField(wireName: r'hudson.node_monitors.ArchitectureMonitor')
  String? get hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;

  @BuiltValueField(wireName: r'hudson.node_monitors.ResponseTimeMonitor')
  ResponseTimeMonitorData? get hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;

  @BuiltValueField(wireName: r'hudson.node_monitors.ClockMonitor')
  ClockDifference? get hudsonPeriodNodeMonitorsPeriodClockMonitor;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  HudsonMasterComputermonitorData._();

  factory HudsonMasterComputermonitorData([void updates(HudsonMasterComputermonitorDataBuilder b)]) = _$HudsonMasterComputermonitorData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HudsonMasterComputermonitorDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HudsonMasterComputermonitorData> get serializer => _$HudsonMasterComputermonitorDataSerializer();
}

class _$HudsonMasterComputermonitorDataSerializer implements PrimitiveSerializer<HudsonMasterComputermonitorData> {
  @override
  final Iterable<Type> types = const [HudsonMasterComputermonitorData, _$HudsonMasterComputermonitorData];

  @override
  final String wireName = r'HudsonMasterComputermonitorData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HudsonMasterComputermonitorData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor != null) {
      yield r'hudson.node_monitors.SwapSpaceMonitor';
      yield serializers.serialize(
        object.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor,
        specifiedType: const FullType(SwapSpaceMonitorMemoryUsage2),
      );
    }
    if (object.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor != null) {
      yield r'hudson.node_monitors.TemporarySpaceMonitor';
      yield serializers.serialize(
        object.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor,
        specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace),
      );
    }
    if (object.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor != null) {
      yield r'hudson.node_monitors.DiskSpaceMonitor';
      yield serializers.serialize(
        object.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor,
        specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace),
      );
    }
    if (object.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor != null) {
      yield r'hudson.node_monitors.ArchitectureMonitor';
      yield serializers.serialize(
        object.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor,
        specifiedType: const FullType(String),
      );
    }
    if (object.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor != null) {
      yield r'hudson.node_monitors.ResponseTimeMonitor';
      yield serializers.serialize(
        object.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor,
        specifiedType: const FullType(ResponseTimeMonitorData),
      );
    }
    if (object.hudsonPeriodNodeMonitorsPeriodClockMonitor != null) {
      yield r'hudson.node_monitors.ClockMonitor';
      yield serializers.serialize(
        object.hudsonPeriodNodeMonitorsPeriodClockMonitor,
        specifiedType: const FullType(ClockDifference),
      );
    }
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HudsonMasterComputermonitorData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HudsonMasterComputermonitorDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hudson.node_monitors.SwapSpaceMonitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SwapSpaceMonitorMemoryUsage2),
          ) as SwapSpaceMonitorMemoryUsage2?;
          if (valueDes == null) continue;
          result.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor.replace(valueDes);
          break;
        case r'hudson.node_monitors.TemporarySpaceMonitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DiskSpaceMonitorDescriptorDiskSpace),
          ) as DiskSpaceMonitorDescriptorDiskSpace?;
          if (valueDes == null) continue;
          result.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor.replace(valueDes);
          break;
        case r'hudson.node_monitors.DiskSpaceMonitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DiskSpaceMonitorDescriptorDiskSpace),
          ) as DiskSpaceMonitorDescriptorDiskSpace?;
          if (valueDes == null) continue;
          result.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor.replace(valueDes);
          break;
        case r'hudson.node_monitors.ArchitectureMonitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor = valueDes;
          break;
        case r'hudson.node_monitors.ResponseTimeMonitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ResponseTimeMonitorData),
          ) as ResponseTimeMonitorData?;
          if (valueDes == null) continue;
          result.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor.replace(valueDes);
          break;
        case r'hudson.node_monitors.ClockMonitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ClockDifference),
          ) as ClockDifference?;
          if (valueDes == null) continue;
          result.hudsonPeriodNodeMonitorsPeriodClockMonitor.replace(valueDes);
          break;
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.class_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HudsonMasterComputermonitorData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HudsonMasterComputermonitorDataBuilder();
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

