//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run_nodeedges.g.dart';

abstract class PipelineRunNodeedges implements Built<PipelineRunNodeedges, PipelineRunNodeedgesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineRunNodeedges._();

    static void _initializeBuilder(PipelineRunNodeedgesBuilder b) => b;

    factory PipelineRunNodeedges([void updates(PipelineRunNodeedgesBuilder b)]) = _$PipelineRunNodeedges;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineRunNodeedges> get serializer => _$PipelineRunNodeedgesSerializer();
}

class _$PipelineRunNodeedgesSerializer implements StructuredSerializer<PipelineRunNodeedges> {

    @override
    final Iterable<Type> types = const [PipelineRunNodeedges, _$PipelineRunNodeedges];
    @override
    final String wireName = r'PipelineRunNodeedges';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineRunNodeedges object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
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
    PipelineRunNodeedges deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunNodeedgesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
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

