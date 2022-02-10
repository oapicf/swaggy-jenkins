//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_step_impllinks.g.dart';

/// InputStepImpllinks
///
/// Properties:
/// * [self] 
/// * [class_] 
abstract class InputStepImpllinks implements Built<InputStepImpllinks, InputStepImpllinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    InputStepImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InputStepImpllinksBuilder b) => b;

    factory InputStepImpllinks([void updates(InputStepImpllinksBuilder b)]) = _$InputStepImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<InputStepImpllinks> get serializer => _$InputStepImpllinksSerializer();
}

class _$InputStepImpllinksSerializer implements StructuredSerializer<InputStepImpllinks> {
    @override
    final Iterable<Type> types = const [InputStepImpllinks, _$InputStepImpllinks];

    @override
    final String wireName = r'InputStepImpllinks';

    @override
    Iterable<Object?> serialize(Serializers serializers, InputStepImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
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
    InputStepImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InputStepImpllinksBuilder();

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

