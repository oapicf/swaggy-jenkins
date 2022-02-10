//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/disk_space_monitor_descriptor_disk_space.dart';
import 'package:openapi/model/clock_difference.dart';
import 'package:openapi/model/response_time_monitor_data.dart';
import 'package:openapi/model/swap_space_monitor_memory_usage2.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computermonitor_data.g.dart';

abstract class HudsonMasterComputermonitorData implements Built<HudsonMasterComputermonitorData, HudsonMasterComputermonitorDataBuilder> {

    @nullable
    @BuiltValueField(wireName: r'hudson.node_monitors.SwapSpaceMonitor')
    SwapSpaceMonitorMemoryUsage2 get hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;

    @nullable
    @BuiltValueField(wireName: r'hudson.node_monitors.TemporarySpaceMonitor')
    DiskSpaceMonitorDescriptorDiskSpace get hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;

    @nullable
    @BuiltValueField(wireName: r'hudson.node_monitors.DiskSpaceMonitor')
    DiskSpaceMonitorDescriptorDiskSpace get hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;

    @nullable
    @BuiltValueField(wireName: r'hudson.node_monitors.ArchitectureMonitor')
    String get hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;

    @nullable
    @BuiltValueField(wireName: r'hudson.node_monitors.ResponseTimeMonitor')
    ResponseTimeMonitorData get hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;

    @nullable
    @BuiltValueField(wireName: r'hudson.node_monitors.ClockMonitor')
    ClockDifference get hudsonPeriodNodeMonitorsPeriodClockMonitor;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    HudsonMasterComputermonitorData._();

    static void _initializeBuilder(HudsonMasterComputermonitorDataBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, HudsonMasterComputermonitorData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    HudsonMasterComputermonitorData deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonMasterComputermonitorDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'hudson.node_monitors.SwapSpaceMonitor':
                    result.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor.replace(serializers.deserialize(value,
                        specifiedType: const FullType(SwapSpaceMonitorMemoryUsage2)) as SwapSpaceMonitorMemoryUsage2);
                    break;
                case r'hudson.node_monitors.TemporarySpaceMonitor':
                    result.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor.replace(serializers.deserialize(value,
                        specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace)) as DiskSpaceMonitorDescriptorDiskSpace);
                    break;
                case r'hudson.node_monitors.DiskSpaceMonitor':
                    result.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor.replace(serializers.deserialize(value,
                        specifiedType: const FullType(DiskSpaceMonitorDescriptorDiskSpace)) as DiskSpaceMonitorDescriptorDiskSpace);
                    break;
                case r'hudson.node_monitors.ArchitectureMonitor':
                    result.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'hudson.node_monitors.ResponseTimeMonitor':
                    result.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTimeMonitorData)) as ResponseTimeMonitorData);
                    break;
                case r'hudson.node_monitors.ClockMonitor':
                    result.hudsonPeriodNodeMonitorsPeriodClockMonitor.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ClockDifference)) as ClockDifference);
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

