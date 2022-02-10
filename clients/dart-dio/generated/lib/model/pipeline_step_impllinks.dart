//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_step_impllinks.g.dart';

abstract class PipelineStepImpllinks implements Built<PipelineStepImpllinks, PipelineStepImpllinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'actions')
    Link get actions;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineStepImpllinks._();

    static void _initializeBuilder(PipelineStepImpllinksBuilder b) => b;

    factory PipelineStepImpllinks([void updates(PipelineStepImpllinksBuilder b)]) = _$PipelineStepImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineStepImpllinks> get serializer => _$PipelineStepImpllinksSerializer();
}

class _$PipelineStepImpllinksSerializer implements StructuredSerializer<PipelineStepImpllinks> {

    @override
    final Iterable<Type> types = const [PipelineStepImpllinks, _$PipelineStepImpllinks];
    @override
    final String wireName = r'PipelineStepImpllinks';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineStepImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
                    specifiedType: const FullType(Link)));
        }
        if (object.actions != null) {
            result
                ..add(r'actions')
                ..add(serializers.serialize(object.actions,
                    specifiedType: const FullType(Link)));
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
    PipelineStepImpllinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineStepImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'self':
                    result.self.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'actions':
                    result.actions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
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

