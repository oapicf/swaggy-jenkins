//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/string_parameter_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_parameter_definition.g.dart';

/// StringParameterDefinition
///
/// Properties:
/// * [class_] 
/// * [defaultParameterValue] 
/// * [description] 
/// * [name] 
/// * [type] 
abstract class StringParameterDefinition implements Built<StringParameterDefinition, StringParameterDefinitionBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'defaultParameterValue')
    StringParameterValue? get defaultParameterValue;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'type')
    String? get type;

    StringParameterDefinition._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(StringParameterDefinitionBuilder b) => b;

    factory StringParameterDefinition([void updates(StringParameterDefinitionBuilder b)]) = _$StringParameterDefinition;

    @BuiltValueSerializer(custom: true)
    static Serializer<StringParameterDefinition> get serializer => _$StringParameterDefinitionSerializer();
}

class _$StringParameterDefinitionSerializer implements StructuredSerializer<StringParameterDefinition> {
    @override
    final Iterable<Type> types = const [StringParameterDefinition, _$StringParameterDefinition];

    @override
    final String wireName = r'StringParameterDefinition';

    @override
    Iterable<Object?> serialize(Serializers serializers, StringParameterDefinition object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.defaultParameterValue != null) {
            result
                ..add(r'defaultParameterValue')
                ..add(serializers.serialize(object.defaultParameterValue,
                    specifiedType: const FullType(StringParameterValue)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    StringParameterDefinition deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StringParameterDefinitionBuilder();

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
                case r'defaultParameterValue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(StringParameterValue)) as StringParameterValue;
                    result.defaultParameterValue.replace(valueDes);
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

