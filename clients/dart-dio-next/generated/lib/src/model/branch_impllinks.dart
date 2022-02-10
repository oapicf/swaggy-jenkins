//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_impllinks.g.dart';

/// BranchImpllinks
///
/// Properties:
/// * [self] 
/// * [actions] 
/// * [runs] 
/// * [queue] 
/// * [class_] 
abstract class BranchImpllinks implements Built<BranchImpllinks, BranchImpllinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'actions')
    Link? get actions;

    @BuiltValueField(wireName: r'runs')
    Link? get runs;

    @BuiltValueField(wireName: r'queue')
    Link? get queue;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    BranchImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BranchImpllinksBuilder b) => b;

    factory BranchImpllinks([void updates(BranchImpllinksBuilder b)]) = _$BranchImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<BranchImpllinks> get serializer => _$BranchImpllinksSerializer();
}

class _$BranchImpllinksSerializer implements StructuredSerializer<BranchImpllinks> {
    @override
    final Iterable<Type> types = const [BranchImpllinks, _$BranchImpllinks];

    @override
    final String wireName = r'BranchImpllinks';

    @override
    Iterable<Object?> serialize(Serializers serializers, BranchImpllinks object,
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
        if (object.runs != null) {
            result
                ..add(r'runs')
                ..add(serializers.serialize(object.runs,
                    specifiedType: const FullType(Link)));
        }
        if (object.queue != null) {
            result
                ..add(r'queue')
                ..add(serializers.serialize(object.queue,
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
    BranchImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BranchImpllinksBuilder();

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
                case r'runs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.runs.replace(valueDes);
                    break;
                case r'queue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link;
                    result.queue.replace(valueDes);
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

