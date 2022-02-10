//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/cause_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/empty_change_log_set.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_build.g.dart';

abstract class FreeStyleBuild implements Built<FreeStyleBuild, FreeStyleBuildBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'actions')
    BuiltList<CauseAction> get actions;

    @nullable
    @BuiltValueField(wireName: r'building')
    bool get building;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'duration')
    int get duration;

    @nullable
    @BuiltValueField(wireName: r'estimatedDuration')
    int get estimatedDuration;

    @nullable
    @BuiltValueField(wireName: r'executor')
    String get executor;

    @nullable
    @BuiltValueField(wireName: r'fullDisplayName')
    String get fullDisplayName;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'keepLog')
    bool get keepLog;

    @nullable
    @BuiltValueField(wireName: r'queueId')
    int get queueId;

    @nullable
    @BuiltValueField(wireName: r'result')
    String get result;

    @nullable
    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    @nullable
    @BuiltValueField(wireName: r'builtOn')
    String get builtOn;

    @nullable
    @BuiltValueField(wireName: r'changeSet')
    EmptyChangeLogSet get changeSet;

    FreeStyleBuild._();

    static void _initializeBuilder(FreeStyleBuildBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, FreeStyleBuild object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    FreeStyleBuild deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FreeStyleBuildBuilder();

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
                case r'number':
                    result.number = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'url':
                    result.url = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'actions':
                    result.actions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CauseAction)])) as BuiltList<CauseAction>);
                    break;
                case r'building':
                    result.building = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'duration':
                    result.duration = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'estimatedDuration':
                    result.estimatedDuration = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'executor':
                    result.executor = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fullDisplayName':
                    result.fullDisplayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'keepLog':
                    result.keepLog = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'queueId':
                    result.queueId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'result':
                    result.result = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'timestamp':
                    result.timestamp = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'builtOn':
                    result.builtOn = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'changeSet':
                    result.changeSet.replace(serializers.deserialize(value,
                        specifiedType: const FullType(EmptyChangeLogSet)) as EmptyChangeLogSet);
                    break;
            }
        }
        return result.build();
    }
}

