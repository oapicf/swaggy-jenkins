//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_runartifacts.g.dart';

/// PipelineRunartifacts
///
/// Properties:
/// * [name] 
/// * [size] 
/// * [url] 
/// * [class_] 
abstract class PipelineRunartifacts implements Built<PipelineRunartifacts, PipelineRunartifactsBuilder> {
    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'size')
    int? get size;

    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    PipelineRunartifacts._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineRunartifactsBuilder b) => b;

    factory PipelineRunartifacts([void updates(PipelineRunartifactsBuilder b)]) = _$PipelineRunartifacts;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineRunartifacts> get serializer => _$PipelineRunartifactsSerializer();
}

class _$PipelineRunartifactsSerializer implements StructuredSerializer<PipelineRunartifacts> {
    @override
    final Iterable<Type> types = const [PipelineRunartifacts, _$PipelineRunartifacts];

    @override
    final String wireName = r'PipelineRunartifacts';

    @override
    Iterable<Object?> serialize(Serializers serializers, PipelineRunartifacts object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineRunartifacts deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunartifactsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'size':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.size = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

