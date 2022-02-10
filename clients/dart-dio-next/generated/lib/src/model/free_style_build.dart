//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/empty_change_log_set.dart';
import 'package:openapi/src/model/cause_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_build.g.dart';

/// FreeStyleBuild
///
/// Properties:
/// * [class_] 
/// * [number] 
/// * [url] 
/// * [actions] 
/// * [building] 
/// * [description] 
/// * [displayName] 
/// * [duration] 
/// * [estimatedDuration] 
/// * [executor] 
/// * [fullDisplayName] 
/// * [id] 
/// * [keepLog] 
/// * [queueId] 
/// * [result] 
/// * [timestamp] 
/// * [builtOn] 
/// * [changeSet] 
abstract class FreeStyleBuild implements Built<FreeStyleBuild, FreeStyleBuildBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'number')
    int? get number;

    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'actions')
    BuiltList<CauseAction>? get actions;

    @BuiltValueField(wireName: r'building')
    bool? get building;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'duration')
    int? get duration;

    @BuiltValueField(wireName: r'estimatedDuration')
    int? get estimatedDuration;

    @BuiltValueField(wireName: r'executor')
    String? get executor;

    @BuiltValueField(wireName: r'fullDisplayName')
    String? get fullDisplayName;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'keepLog')
    bool? get keepLog;

    @BuiltValueField(wireName: r'queueId')
    int? get queueId;

    @BuiltValueField(wireName: r'result')
    String? get result;

    @BuiltValueField(wireName: r'timestamp')
    int? get timestamp;

    @BuiltValueField(wireName: r'builtOn')
    String? get builtOn;

    @BuiltValueField(wireName: r'changeSet')
    EmptyChangeLogSet? get changeSet;

    FreeStyleBuild._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FreeStyleBuildBuilder b) => b;

    factory FreeStyleBuild([void updates(FreeStyleBuildBuilder b)]) = _$FreeStyleBuild;

    @BuiltValueSerializer(custom: true)
    static Serializer<FreeStyleBuild> get serializer => _$FreeStyleBuildSerializer();
}

class _$FreeStyleBuildSerializer implements StructuredSerializer<FreeStyleBuild> {
    @override
    final Iterable<Type> types = const [FreeStyleBuild, _$FreeStyleBuild];

    @override
    final String wireName = r'FreeStyleBuild';

    @override
    Iterable<Object?> serialize(Serializers serializers, FreeStyleBuild object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.number != null) {
            result
                ..add(r'number')
                ..add(serializers.serialize(object.number,
                    specifiedType: const FullType(int)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        if (object.actions != null) {
            result
                ..add(r'actions')
                ..add(serializers.serialize(object.actions,
                    specifiedType: const FullType(BuiltList, [FullType(CauseAction)])));
        }
        if (object.building != null) {
            result
                ..add(r'building')
                ..add(serializers.serialize(object.building,
                    specifiedType: const FullType(bool)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.duration != null) {
            result
                ..add(r'duration')
                ..add(serializers.serialize(object.duration,
                    specifiedType: const FullType(int)));
        }
        if (object.estimatedDuration != null) {
            result
                ..add(r'estimatedDuration')
                ..add(serializers.serialize(object.estimatedDuration,
                    specifiedType: const FullType(int)));
        }
        if (object.executor != null) {
            result
                ..add(r'executor')
                ..add(serializers.serialize(object.executor,
                    specifiedType: const FullType(String)));
        }
        if (object.fullDisplayName != null) {
            result
                ..add(r'fullDisplayName')
                ..add(serializers.serialize(object.fullDisplayName,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.keepLog != null) {
            result
                ..add(r'keepLog')
                ..add(serializers.serialize(object.keepLog,
                    specifiedType: const FullType(bool)));
        }
        if (object.queueId != null) {
            result
                ..add(r'queueId')
                ..add(serializers.serialize(object.queueId,
                    specifiedType: const FullType(int)));
        }
        if (object.result != null) {
            result
                ..add(r'result')
                ..add(serializers.serialize(object.result,
                    specifiedType: const FullType(String)));
        }
        if (object.timestamp != null) {
            result
                ..add(r'timestamp')
                ..add(serializers.serialize(object.timestamp,
                    specifiedType: const FullType(int)));
        }
        if (object.builtOn != null) {
            result
                ..add(r'builtOn')
                ..add(serializers.serialize(object.builtOn,
                    specifiedType: const FullType(String)));
        }
        if (object.changeSet != null) {
            result
                ..add(r'changeSet')
                ..add(serializers.serialize(object.changeSet,
                    specifiedType: const FullType(EmptyChangeLogSet)));
        }
        return result;
    }

    @override
    FreeStyleBuild deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FreeStyleBuildBuilder();

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
                case r'number':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.number = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
                case r'actions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CauseAction)])) as BuiltList<CauseAction>;
                    result.actions.replace(valueDes);
                    break;
                case r'building':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.building = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'duration':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.duration = valueDes;
                    break;
                case r'estimatedDuration':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.estimatedDuration = valueDes;
                    break;
                case r'executor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.executor = valueDes;
                    break;
                case r'fullDisplayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullDisplayName = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'keepLog':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.keepLog = valueDes;
                    break;
                case r'queueId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.queueId = valueDes;
                    break;
                case r'result':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.result = valueDes;
                    break;
                case r'timestamp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.timestamp = valueDes;
                    break;
                case r'builtOn':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.builtOn = valueDes;
                    break;
                case r'changeSet':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(EmptyChangeLogSet)) as EmptyChangeLogSet;
                    result.changeSet.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

