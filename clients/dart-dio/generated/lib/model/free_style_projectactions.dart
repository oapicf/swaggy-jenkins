//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_projectactions.g.dart';

abstract class FreeStyleProjectactions implements Built<FreeStyleProjectactions, FreeStyleProjectactionsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    FreeStyleProjectactions._();

    static void _initializeBuilder(FreeStyleProjectactionsBuilder b) => b;

    factory FreeStyleProjectactions([void updates(FreeStyleProjectactionsBuilder b)]) = _$FreeStyleProjectactions;

    @BuiltValueSerializer(custom: true)
    static Serializer<FreeStyleProjectactions> get serializer => _$FreeStyleProjectactionsSerializer();
}

class _$FreeStyleProjectactionsSerializer implements StructuredSerializer<FreeStyleProjectactions> {

    @override
    final Iterable<Type> types = const [FreeStyleProjectactions, _$FreeStyleProjectactions];
    @override
    final String wireName = r'FreeStyleProjectactions';

    @override
    Iterable<Object> serialize(Serializers serializers, FreeStyleProjectactions object,
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
    FreeStyleProjectactions deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FreeStyleProjectactionsBuilder();

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

