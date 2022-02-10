//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/pipelinelatest_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline.g.dart';

abstract class Pipeline implements Built<Pipeline, PipelineBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;

    @nullable
    @BuiltValueField(wireName: r'weatherScore')
    int get weatherScore;

    @nullable
    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int get estimatedDurationInMillis;

    @nullable
    @BuiltValueField(wireName: r'latestRun')
    PipelinelatestRun get latestRun;

    Pipeline._();

    static void _initializeBuilder(PipelineBuilder b) => b;

    factory Pipeline([void updates(PipelineBuilder b)]) = _$Pipeline;

    @BuiltValueSerializer(custom: true)
    static Serializer<Pipeline> get serializer => _$PipelineSerializer();
}

class _$PipelineSerializer implements StructuredSerializer<Pipeline> {

    @override
    final Iterable<Type> types = const [Pipeline, _$Pipeline];
    @override
    final String wireName = r'Pipeline';

    @override
    Iterable<Object> serialize(Serializers serializers, Pipeline object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        if (object.weatherScore != null) {
            result
                ..add(r'weatherScore')
                ..add(serializers.serialize(object.weatherScore,
                    specifiedType: const FullType(int)));
        }
        if (object.estimatedDurationInMillis != null) {
            result
                ..add(r'estimatedDurationInMillis')
                ..add(serializers.serialize(object.estimatedDurationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.latestRun != null) {
            result
                ..add(r'latestRun')
                ..add(serializers.serialize(object.latestRun,
                    specifiedType: const FullType(PipelinelatestRun)));
        }
        return result;
    }

    @override
    Pipeline deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineBuilder();

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
                case r'organization':
                    result.organization = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fullName':
                    result.fullName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'weatherScore':
                    result.weatherScore = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'estimatedDurationInMillis':
                    result.estimatedDurationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'latestRun':
                    result.latestRun.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelinelatestRun)) as PipelinelatestRun);
                    break;
            }
        }
        return result.build();
    }
}

