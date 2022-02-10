//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(HudsonMasterComputerBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, HudsonMasterComputer object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    HudsonMasterComputer deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonMasterComputerBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'executors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputerexecutors)])) as BuiltList<HudsonMasterComputerexecutors>;
                    result.executors.replace(valueDes);
                    break;
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.icon = valueDes;
                    break;
                case r'iconClassName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.iconClassName = valueDes;
                    break;
                case r'idle':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.idle = valueDes;
                    break;
                case r'jnlpAgent':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.jnlpAgent = valueDes;
                    break;
                case r'launchSupported':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.launchSupported = valueDes;
                    break;
                case r'loadStatistics':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Label1)) as Label1;
                    result.loadStatistics.replace(valueDes);
                    break;
                case r'manualLaunchAllowed':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.manualLaunchAllowed = valueDes;
                    break;
                case r'monitorData':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(HudsonMasterComputermonitorData)) as HudsonMasterComputermonitorData;
                    result.monitorData.replace(valueDes);
                    break;
                case r'numExecutors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.numExecutors = valueDes;
                    break;
                case r'offline':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.offline = valueDes;
                    break;
                case r'offlineCause':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.offlineCause = valueDes;
                    break;
                case r'offlineCauseReason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.offlineCauseReason = valueDes;
                    break;
                case r'temporarilyOffline':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.temporarilyOffline = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

