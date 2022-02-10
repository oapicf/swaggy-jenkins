//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/string_parameter_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_parameter_definition.g.dart';

abstract class StringParameterDefinition implements Built<StringParameterDefinition, StringParameterDefinitionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'defaultParameterValue')
    StringParameterValue get defaultParameterValue;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    StringParameterDefinition._();

    static void _initializeBuilder(StringParameterDefinitionBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, StringParameterDefinition object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    StringParameterDefinition deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StringParameterDefinitionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'defaultParameterValue':
                    result.defaultParameterValue.replace(serializers.deserialize(value,
                        specifiedType: const FullType(StringParameterValue)) as StringParameterValue);
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

