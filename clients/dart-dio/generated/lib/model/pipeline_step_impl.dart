//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/input_step_impl.dart';
import 'package:openapi/model/pipeline_step_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_step_impl.g.dart';

abstract class PipelineStepImpl implements Built<PipelineStepImpl, PipelineStepImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    PipelineStepImpllinks get links;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'durationInMillis')
    int get durationInMillis;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'input')
    InputStepImpl get input;

    @nullable
    @BuiltValueField(wireName: r'result')
    String get result;

    @nullable
    @BuiltValueField(wireName: r'startTime')
    String get startTime;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    PipelineStepImpl._();

    static void _initializeBuilder(PipelineStepImplBuilder b) => b;

    factory PipelineStepImpl([void updates(PipelineStepImplBuilder b)]) = _$PipelineStepImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineStepImpl> get serializer => _$PipelineStepImplSerializer();
}

class _$PipelineStepImplSerializer implements StructuredSerializer<PipelineStepImpl> {

    @override
    final Iterable<Type> types = const [PipelineStepImpl, _$PipelineStepImpl];
    @override
    final String wireName = r'PipelineStepImpl';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineStepImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(PipelineStepImpllinks)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.durationInMillis != null) {
            result
                ..add(r'durationInMillis')
                ..add(serializers.serialize(object.durationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.input != null) {
            result
                ..add(r'input')
                ..add(serializers.serialize(object.input,
                    specifiedType: const FullType(InputStepImpl)));
        }
        if (object.result != null) {
            result
                ..add(r'result')
                ..add(serializers.serialize(object.result,
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
        return result;
    }

    @override
    PipelineStepImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineStepImplBuilder();

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
                case r'_links':
                    result.links.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelineStepImpllinks)) as PipelineStepImpllinks);
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'durationInMillis':
                    result.durationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'input':
                    result.input.replace(serializers.deserialize(value,
                        specifiedType: const FullType(InputStepImpl)) as InputStepImpl);
                    break;
                case r'result':
                    result.result = serializers.deserialize(value,
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
            }
        }
        return result.build();
    }
}

