//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run_impllinks.g.dart';

/// PipelineRunImpllinks
///
/// Properties:
/// * [nodes] 
/// * [log] 
/// * [self] 
/// * [actions] 
/// * [steps] 
/// * [class_] 
abstract class PipelineRunImpllinks implements Built<PipelineRunImpllinks, PipelineRunImpllinksBuilder> {
    @BuiltValueField(wireName: r'nodes')
    Link? get nodes;

    @BuiltValueField(wireName: r'log')
    Link? get log;

    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'actions')
    Link? get actions;

    @BuiltValueField(wireName: r'steps')
    Link? get steps;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    PipelineRunImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineRunImpllinksBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, PipelineRunImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineRunImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineRunImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'nodes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.nodes.replace(valueDes);
                    break;
                case r'log':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.log.replace(valueDes);
                    break;
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
                case r'steps':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.steps.replace(valueDes);
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

