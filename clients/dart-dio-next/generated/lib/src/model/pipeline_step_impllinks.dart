//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_step_impllinks.g.dart';

/// PipelineStepImpllinks
///
/// Properties:
/// * [self] 
/// * [actions] 
/// * [class_] 
abstract class PipelineStepImpllinks implements Built<PipelineStepImpllinks, PipelineStepImpllinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'actions')
    Link? get actions;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    PipelineStepImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineStepImpllinksBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, PipelineStepImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineStepImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineStepImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'self':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.self.replace(valueDes);
                    break;
                case r'actions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.actions.replace(valueDes);
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

