//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_impllinks.g.dart';

abstract class FavoriteImpllinks implements Built<FavoriteImpllinks, FavoriteImpllinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    FavoriteImpllinks._();

    static void _initializeBuilder(FavoriteImpllinksBuilder b) => b;

    factory FavoriteImpllinks([void updates(FavoriteImpllinksBuilder b)]) = _$FavoriteImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<FavoriteImpllinks> get serializer => _$FavoriteImpllinksSerializer();
}

class _$FavoriteImpllinksSerializer implements StructuredSerializer<FavoriteImpllinks> {

    @override
    final Iterable<Type> types = const [FavoriteImpllinks, _$FavoriteImpllinks];
    @override
    final String wireName = r'FavoriteImpllinks';

    @override
    Iterable<Object> serialize(Serializers serializers, FavoriteImpllinks object,
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
    FavoriteImpllinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteImpllinksBuilder();

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

