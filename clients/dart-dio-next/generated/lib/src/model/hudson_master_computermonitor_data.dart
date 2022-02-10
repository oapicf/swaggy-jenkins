//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(HudsonMasterComputermonitorDataBuilder b) => b;

    factory HudsonMasterComputermonitorData([void updates(HudsonMasterComputermonitorDataBuilder b)]) = _$HudsonMasterComputermonitorData;

    @BuiltValueSerializer(custom: true)
    static Serializer<HudsonMasterComputermonitorData> get serializer => _$HudsonMasterComputermonitorDataSerializer();
}

class _$HudsonMasterComputermonitorDataSerializer implements StructuredSerializer<HudsonMasterComputermonitorData> {
    @override
    final Iterable<Type> types = const [HudsonMasterComputermonitorData, _$HudsonMasterComputermonitorData];

    @override
    final String wireName = r'HudsonMasterComputermonitorData';

    @override
    Iterable<Object?> serialize(Serializers serializers, HudsonMasterComputermonitorData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor != null) {
            result
                ..add(r'hudson.node_monitors.SwapSpaceMonitor')
                ..add(serializers.serialize(object.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor,
                    specifiedType: const FullType(SwapSpaceMonitorMemoryUsage2)));
        }
        if (object.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor != null) {
            result
                ..add(r'hudson.node_monitors.TemporarySpaceMonitor')
                ..add(serializers.serialize(object.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor,
                    specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace)));
        }
        if (object.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor != null) {
            result
                ..add(r'hudson.node_monitors.DiskSpaceMonitor')
                ..add(serializers.serialize(object.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor,
                    specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace)));
        }
        if (object.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor != null) {
            result
                ..add(r'hudson.node_monitors.ArchitectureMonitor')
                ..add(serializers.serialize(object.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor,
                    specifiedType: const FullType(String)));
        }
        if (object.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor != null) {
            result
                ..add(r'hudson.node_monitors.ResponseTimeMonitor')
                ..add(serializers.serialize(object.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor,
                    specifiedType: const FullType(ResponseTimeMonitorData)));
        }
        if (object.hudsonPeriodNodeMonitorsPeriodClockMonitor != null) {
            result
                ..add(r'hudson.node_monitors.ClockMonitor')
                ..add(serializers.serialize(object.hudsonPeriodNodeMonitorsPeriodClockMonitor,
                    specifiedType: const FullType(ClockDifference)));
        }
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    HudsonMasterComputermonitorData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonMasterComputermonitorDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'hudson.node_monitors.SwapSpaceMonitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SwapSpaceMonitorMemoryUsage2)) as SwapSpaceMonitorMemoryUsage2;
                    result.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor.replace(valueDes);
                    break;
                case r'hudson.node_monitors.TemporarySpaceMonitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace)) as DiskSpaceMonitorDescriptorDiskSpace;
                    result.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor.replace(valueDes);
                    break;
                case r'hudson.node_monitors.DiskSpaceMonitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace)) as DiskSpaceMonitorDescriptorDiskSpace;
                    result.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor.replace(valueDes);
                    break;
                case r'hudson.node_monitors.ArchitectureMonitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor = valueDes;
                    break;
                case r'hudson.node_monitors.ResponseTimeMonitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTimeMonitorData)) as ResponseTimeMonitorData;
                    result.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor.replace(valueDes);
                    break;
                case r'hudson.node_monitors.ClockMonitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ClockDifference)) as ClockDifference;
                    result.hudsonPeriodNodeMonitorsPeriodClockMonitor.replace(valueDes);
                    break;
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

