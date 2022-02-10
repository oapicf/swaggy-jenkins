//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_impllinks.g.dart';

/// PipelineImpllinks
///
/// Properties:
/// * [runs] 
/// * [self] 
/// * [queue] 
/// * [actions] 
/// * [class_] 
abstract class PipelineImpllinks implements Built<PipelineImpllinks, PipelineImpllinksBuilder> {
    @BuiltValueField(wireName: r'runs')
    Link? get runs;

    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'queue')
    Link? get queue;

    @BuiltValueField(wireName: r'actions')
    Link? get actions;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    PipelineImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineImpllinksBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, PipelineImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'runs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.runs.replace(valueDes);
                    break;
                case r'self':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.self.replace(valueDes);
                    break;
                case r'queue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.queue.replace(valueDes);
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

