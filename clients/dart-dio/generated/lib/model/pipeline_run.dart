//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/pipeline_runartifacts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run.g.dart';

abstract class PipelineRun implements Built<PipelineRun, PipelineRunBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'artifacts')
    BuiltList<PipelineRunartifacts> get artifacts;

    @nullable
    @BuiltValueField(wireName: r'durationInMillis')
    int get durationInMillis;

    @nullable
    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int get estimatedDurationInMillis;

    @nullable
    @BuiltValueField(wireName: r'enQueueTime')
    String get enQueueTime;

    @nullable
    @BuiltValueField(wireName: r'endTime')
    String get endTime;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    @nullable
    @BuiltValueField(wireName: r'pipeline')
    String get pipeline;

    @nullable
    @BuiltValueField(wireName: r'result')
    String get result;

    @nullable
    @BuiltValueField(wireName: r'runSummary')
    String get runSummary;

    @nullable
    @BuiltValueField(wireName: r'startTime')
    String get startTime;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'commitId')
    String get commitId;

    PipelineRun._();

    static void _initializeBuilder(PipelineRunBuilder b) => b;

    factory PipelineRun([void updates(PipelineRunBuilder b)]) = _$PipelineRun;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineRun> get serializer => _$PipelineRunSerializer();
}

class _$PipelineRunSerializer implements StructuredSerializer<PipelineRun> {

    @override
    final Iterable<Type> types = const [PipelineRun, _$PipelineRun];
    @override
    final String wireName = r'PipelineRun';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineRun object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.artifacts != null) {
            result
                ..add(r'artifacts')
                ..add(serializers.serialize(object.artifacts,
                    specifiedType: const FullType(BuiltList, [FullType(PipelineRunartifacts)])));
        }
        if (object.durationInMillis != null) {
            result
                ..add(r'durationInMillis')
                ..add(serializers.serialize(object.durationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.estimatedDurationInMillis != null) {
            result
                ..add(r'estimatedDurationInMillis')
                ..add(serializers.serialize(object.estimatedDurationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.enQueueTime != null) {
            result
                ..add(r'enQueueTime')
                ..add(serializers.serialize(object.enQueueTime,
                    specifiedType: const FullType(String)));
        }
        if (object.endTime != null) {
            result
                ..add(r'endTime')
                ..add(serializers.serialize(object.endTime,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(String)));
        }
        if (object.pipeline != null) {
            result
                ..add(r'pipeline')
                ..add(serializers.serialize(object.pipeline,
                    specifiedType: const FullType(String)));
        }
        if (object.result != null) {
            result
                ..add(r'result')
                ..add(serializers.serialize(object.result,
                    specifiedType: const FullType(String)));
        }
        if (object.runSummary != null) {
            result
                ..add(r'runSummary')
                ..add(serializers.serialize(object.runSummary,
                    specifiedType: const FullType(String)));
        }
        if (object.startTime != null) {
            result
                ..add(r'startTime')
                ..add(serializers.serialize(object.startTime,
                    specifiedType: const FullType(String)));
        }
        if (object.state != null) {
            result
                ..add(r'state')
                ..add(serializers.serialize(object.state,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.commitId != null) {
            result
                ..add(r'commitId')
                ..add(serializers.serialize(object.commitId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    PipelineRun deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunBuilder();

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
                case r'artifacts':
                    result.artifacts.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(PipelineRunartifacts)])) as BuiltList<PipelineRunartifacts>);
                    break;
                case r'durationInMillis':
                    result.durationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'estimatedDurationInMillis':
                    result.estimatedDurationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'enQueueTime':
                    result.enQueueTime = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'endTime':
                    result.endTime = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'organization':
                    result.organization = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'pipeline':
                    result.pipeline = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'result':
                    result.result = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'runSummary':
                    result.runSummary = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'startTime':
                    result.startTime = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'state':
                    result.state = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'commitId':
                    result.commitId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

