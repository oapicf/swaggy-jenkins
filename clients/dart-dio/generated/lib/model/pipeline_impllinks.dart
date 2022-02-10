//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_impllinks.g.dart';

abstract class PipelineImpllinks implements Built<PipelineImpllinks, PipelineImpllinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'runs')
    Link get runs;

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'queue')
    Link get queue;

    @nullable
    @BuiltValueField(wireName: r'actions')
    Link get actions;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineImpllinks._();

    static void _initializeBuilder(PipelineImpllinksBuilder b) => b;

    factory PipelineImpllinks([void updates(PipelineImpllinksBuilder b)]) = _$PipelineImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineImpllinks> get serializer => _$PipelineImpllinksSerializer();
}

class _$PipelineImpllinksSerializer implements StructuredSerializer<PipelineImpllinks> {

    @override
    final Iterable<Type> types = const [PipelineImpllinks, _$PipelineImpllinks];
    @override
    final String wireName = r'PipelineImpllinks';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.runs != null) {
            result
                ..add(r'runs')
                ..add(serializers.serialize(object.runs,
                    specifiedType: const FullType(Link)));
        }
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
                    specifiedType: const FullType(Link)));
        }
        if (object.queue != null) {
            result
                ..add(r'queue')
                ..add(serializers.serialize(object.queue,
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
    PipelineImpllinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'runs':
                    result.runs.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'self':
                    result.self.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'queue':
                    result.queue.replace(serializers.deserialize(value,
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

