//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/hudson_master_computerexecutors.dart';
import 'package:openapi/model/hudson_master_computermonitor_data.dart';
import 'package:openapi/model/label1.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computer.g.dart';

abstract class HudsonMasterComputer implements Built<HudsonMasterComputer, HudsonMasterComputerBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'executors')
    BuiltList<HudsonMasterComputerexecutors> get executors;

    @nullable
    @BuiltValueField(wireName: r'icon')
    String get icon;

    @nullable
    @BuiltValueField(wireName: r'iconClassName')
    String get iconClassName;

    @nullable
    @BuiltValueField(wireName: r'idle')
    bool get idle;

    @nullable
    @BuiltValueField(wireName: r'jnlpAgent')
    bool get jnlpAgent;

    @nullable
    @BuiltValueField(wireName: r'launchSupported')
    bool get launchSupported;

    @nullable
    @BuiltValueField(wireName: r'loadStatistics')
    Label1 get loadStatistics;

    @nullable
    @BuiltValueField(wireName: r'manualLaunchAllowed')
    bool get manualLaunchAllowed;

    @nullable
    @BuiltValueField(wireName: r'monitorData')
    HudsonMasterComputermonitorData get monitorData;

    @nullable
    @BuiltValueField(wireName: r'numExecutors')
    int get numExecutors;

    @nullable
    @BuiltValueField(wireName: r'offline')
    bool get offline;

    @nullable
    @BuiltValueField(wireName: r'offlineCause')
    String get offlineCause;

    @nullable
    @BuiltValueField(wireName: r'offlineCauseReason')
    String get offlineCauseReason;

    @nullable
    @BuiltValueField(wireName: r'temporarilyOffline')
    bool get temporarilyOffline;

    HudsonMasterComputer._();

    static void _initializeBuilder(HudsonMasterComputerBuilder b) => b;

    factory HudsonMasterComputer([void updates(HudsonMasterComputerBuilder b)]) = _$HudsonMasterComputer;

    @BuiltValueSerializer(custom: true)
    static Serializer<HudsonMasterComputer> get serializer => _$HudsonMasterComputerSerializer();
}

class _$HudsonMasterComputerSerializer implements StructuredSerializer<HudsonMasterComputer> {

    @override
    final Iterable<Type> types = const [HudsonMasterComputer, _$HudsonMasterComputer];
    @override
    final String wireName = r'HudsonMasterComputer';

    @override
    Iterable<Object> serialize(Serializers serializers, HudsonMasterComputer object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.executors != null) {
            result
                ..add(r'executors')
                ..add(serializers.serialize(object.executors,
                    specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputerexecutors)])));
        }
        if (object.icon != null) {
            result
                ..add(r'icon')
                ..add(serializers.serialize(object.icon,
                    specifiedType: const FullType(String)));
        }
        if (object.iconClassName != null) {
            result
                ..add(r'iconClassName')
                ..add(serializers.serialize(object.iconClassName,
                    specifiedType: const FullType(String)));
        }
        if (object.idle != null) {
            result
                ..add(r'idle')
                ..add(serializers.serialize(object.idle,
                    specifiedType: const FullType(bool)));
        }
        if (object.jnlpAgent != null) {
            result
                ..add(r'jnlpAgent')
                ..add(serializers.serialize(object.jnlpAgent,
                    specifiedType: const FullType(bool)));
        }
        if (object.launchSupported != null) {
            result
                ..add(r'launchSupported')
                ..add(serializers.serialize(object.launchSupported,
                    specifiedType: const FullType(bool)));
        }
        if (object.loadStatistics != null) {
            result
                ..add(r'loadStatistics')
                ..add(serializers.serialize(object.loadStatistics,
                    specifiedType: const FullType(Label1)));
        }
        if (object.manualLaunchAllowed != null) {
            result
                ..add(r'manualLaunchAllowed')
                ..add(serializers.serialize(object.manualLaunchAllowed,
                    specifiedType: const FullType(bool)));
        }
        if (object.monitorData != null) {
            result
                ..add(r'monitorData')
                ..add(serializers.serialize(object.monitorData,
                    specifiedType: const FullType(HudsonMasterComputermonitorData)));
        }
        if (object.numExecutors != null) {
            result
                ..add(r'numExecutors')
                ..add(serializers.serialize(object.numExecutors,
                    specifiedType: const FullType(int)));
        }
        if (object.offline != null) {
            result
                ..add(r'offline')
                ..add(serializers.serialize(object.offline,
                    specifiedType: const FullType(bool)));
        }
        if (object.offlineCause != null) {
            result
                ..add(r'offlineCause')
                ..add(serializers.serialize(object.offlineCause,
                    specifiedType: const FullType(String)));
        }
        if (object.offlineCauseReason != null) {
            result
                ..add(r'offlineCauseReason')
                ..add(serializers.serialize(object.offlineCauseReason,
                    specifiedType: const FullType(String)));
        }
        if (object.temporarilyOffline != null) {
            result
                ..add(r'temporarilyOffline')
                ..add(serializers.serialize(object.temporarilyOffline,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    HudsonMasterComputer deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonMasterComputerBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'executors':
                    result.executors.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputerexecutors)])) as BuiltList<HudsonMasterComputerexecutors>);
                    break;
                case r'icon':
                    result.icon = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'iconClassName':
                    result.iconClassName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'idle':
                    result.idle = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'jnlpAgent':
                    result.jnlpAgent = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'launchSupported':
                    result.launchSupported = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'loadStatistics':
                    result.loadStatistics.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Label1)) as Label1);
                    break;
                case r'manualLaunchAllowed':
                    result.manualLaunchAllowed = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'monitorData':
                    result.monitorData.replace(serializers.deserialize(value,
                        specifiedType: const FullType(HudsonMasterComputermonitorData)) as HudsonMasterComputermonitorData);
                    break;
                case r'numExecutors':
                    result.numExecutors = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'offline':
                    result.offline = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'offlineCause':
                    result.offlineCause = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'offlineCauseReason':
                    result.offlineCauseReason = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'temporarilyOffline':
                    result.temporarilyOffline = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
            }
        }
        return result.build();
    }
}

