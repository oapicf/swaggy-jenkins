//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_step_impllinks.g.dart';

abstract class InputStepImpllinks implements Built<InputStepImpllinks, InputStepImpllinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    InputStepImpllinks._();

    static void _initializeBuilder(InputStepImpllinksBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, InputStepImpllinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    InputStepImpllinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InputStepImpllinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'self':
                    result.self.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

