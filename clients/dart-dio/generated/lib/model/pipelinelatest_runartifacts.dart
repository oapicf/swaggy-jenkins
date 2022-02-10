//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipelinelatest_runartifacts.g.dart';

abstract class PipelinelatestRunartifacts implements Built<PipelinelatestRunartifacts, PipelinelatestRunartifactsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelinelatestRunartifacts._();

    static void _initializeBuilder(PipelinelatestRunartifactsBuilder b) => b;

    factory PipelinelatestRunartifacts([void updates(PipelinelatestRunartifactsBuilder b)]) = _$PipelinelatestRunartifacts;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelinelatestRunartifacts> get serializer => _$PipelinelatestRunartifactsSerializer();
}

class _$PipelinelatestRunartifactsSerializer implements StructuredSerializer<PipelinelatestRunartifacts> {

    @override
    final Iterable<Type> types = const [PipelinelatestRunartifacts, _$PipelinelatestRunartifacts];
    @override
    final String wireName = r'PipelinelatestRunartifacts';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelinelatestRunartifacts object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.size != null) {
            result
                ..add(r'size')
                ..add(serializers.serialize(object.size,
                    specifiedType: const FullType(int)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
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
    PipelinelatestRunartifacts deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelinelatestRunartifactsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'size':
                    result.size = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'url':
                    result.url = serializers.deserialize(value,
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

