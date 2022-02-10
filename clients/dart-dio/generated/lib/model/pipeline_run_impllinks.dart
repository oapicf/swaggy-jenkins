//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run_impllinks.g.dart';

abstract class PipelineRunImpllinks implements Built<PipelineRunImpllinks, PipelineRunImpllinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'nodes')
    Link get nodes;

    @nullable
    @BuiltValueField(wireName: r'log')
    Link get log;

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'actions')
    Link get actions;

    @nullable
    @BuiltValueField(wireName: r'steps')
    Link get steps;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineRunImpllinks._();

    static void _initializeBuilder(PipelineRunImpllinksBuilder b) => b;

    factory PipelineRunImpllinks([void updates(PipelineRunImpllinksBuilder b)]) = _$PipelineRunImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineRunImpllinks> get serializer => _$PipelineRunImpllinksSerializer();
}

class _$PipelineRunImpllinksSerializer implements StructuredSerializer<PipelineRunImpllinks> {

    @override
    final Iterable<Type> types = const [PipelineRunImpllinks, _$PipelineRunImpllinks];
    @override
    final String wireName = r'PipelineRunImpllinks';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineRunImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.nodes != null) {
            result
                ..add(r'nodes')
                ..add(serializers.serialize(object.nodes,
                    specifiedType: const FullType(Link)));
        }
        if (object.log != null) {
            result
                ..add(r'log')
                ..add(serializers.serialize(object.log,
                    specifiedType: const FullType(Link)));
        }
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
        if (object.steps != null) {
            result
                ..add(r'steps')
                ..add(serializers.serialize(object.steps,
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
    PipelineRunImpllinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'nodes':
                    result.nodes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'log':
                    result.log.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'self':
                    result.self.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'actions':
                    result.actions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'steps':
                    result.steps.replace(serializers.deserialize(value,
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

