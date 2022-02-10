//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pipeline_runartifacts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run.g.dart';

/// PipelineRun
///
/// Properties:
/// * [class_] 
/// * [artifacts] 
/// * [durationInMillis] 
/// * [estimatedDurationInMillis] 
/// * [enQueueTime] 
/// * [endTime] 
/// * [id] 
/// * [organization] 
/// * [pipeline] 
/// * [result] 
/// * [runSummary] 
/// * [startTime] 
/// * [state] 
/// * [type] 
/// * [commitId] 
abstract class PipelineRun implements Built<PipelineRun, PipelineRunBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'artifacts')
    BuiltList<PipelineRunartifacts>? get artifacts;

    @BuiltValueField(wireName: r'durationInMillis')
    int? get durationInMillis;

    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int? get estimatedDurationInMillis;

    @BuiltValueField(wireName: r'enQueueTime')
    String? get enQueueTime;

    @BuiltValueField(wireName: r'endTime')
    String? get endTime;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'organization')
    String? get organization;

    @BuiltValueField(wireName: r'pipeline')
    String? get pipeline;

    @BuiltValueField(wireName: r'result')
    String? get result;

    @BuiltValueField(wireName: r'runSummary')
    String? get runSummary;

    @BuiltValueField(wireName: r'startTime')
    String? get startTime;

    @BuiltValueField(wireName: r'state')
    String? get state;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'commitId')
    String? get commitId;

    PipelineRun._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineRunBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, PipelineRun object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineRun deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunBuilder();

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
                case r'artifacts':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(PipelineRunartifacts)])) as BuiltList<PipelineRunartifacts>;
                    result.artifacts.replace(valueDes);
                    break;
                case r'durationInMillis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.durationInMillis = valueDes;
                    break;
                case r'estimatedDurationInMillis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.estimatedDurationInMillis = valueDes;
                    break;
                case r'enQueueTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.enQueueTime = valueDes;
                    break;
                case r'endTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.endTime = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.organization = valueDes;
                    break;
                case r'pipeline':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.pipeline = valueDes;
                    break;
                case r'result':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.result = valueDes;
                    break;
                case r'runSummary':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.runSummary = valueDes;
                    break;
                case r'startTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.startTime = valueDes;
                    break;
                case r'state':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.state = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'commitId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.commitId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

