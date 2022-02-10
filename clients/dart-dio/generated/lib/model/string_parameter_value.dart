//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_parameter_value.g.dart';

abstract class StringParameterValue implements Built<StringParameterValue, StringParameterValueBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    StringParameterValue._();

    static void _initializeBuilder(StringParameterValueBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, StringParameterValue object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    StringParameterValue deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StringParameterValueBuilder();

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
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'value':
                    result.value = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

