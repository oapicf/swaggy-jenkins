//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'label1.g.dart';

abstract class Label1 implements Built<Label1, Label1Builder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    Label1._();

    static void _initializeBuilder(Label1Builder b) => b;

    factory Label1([void updates(Label1Builder b)]) = _$Label1;

    @BuiltValueSerializer(custom: true)
    static Serializer<Label1> get serializer => _$Label1Serializer();
}

class _$Label1Serializer implements StructuredSerializer<Label1> {

    @override
    final Iterable<Type> types = const [Label1, _$Label1];
    @override
    final String wireName = r'Label1';

    @override
    Iterable<Object> serialize(Serializers serializers, Label1 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Label1 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = Label1Builder();

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
            }
        }
        return result.build();
    }
}

