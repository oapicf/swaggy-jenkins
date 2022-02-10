//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_parameter_value.g.dart';

/// StringParameterValue
///
/// Properties:
/// * [class_] 
/// * [name] 
/// * [value] 
abstract class StringParameterValue implements Built<StringParameterValue, StringParameterValueBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'value')
    String? get value;

    StringParameterValue._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(StringParameterValueBuilder b) => b;

    factory StringParameterValue([void updates(StringParameterValueBuilder b)]) = _$StringParameterValue;

    @BuiltValueSerializer(custom: true)
    static Serializer<StringParameterValue> get serializer => _$StringParameterValueSerializer();
}

class _$StringParameterValueSerializer implements StructuredSerializer<StringParameterValue> {
    @override
    final Iterable<Type> types = const [StringParameterValue, _$StringParameterValue];

    @override
    final String wireName = r'StringParameterValue';

    @override
    Iterable<Object?> serialize(Serializers serializers, StringParameterValue object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.value != null) {
            result
                ..add(r'value')
                ..add(serializers.serialize(object.value,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    StringParameterValue deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StringParameterValueBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'value':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.value = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

