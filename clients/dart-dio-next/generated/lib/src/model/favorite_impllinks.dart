//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_impllinks.g.dart';

/// FavoriteImpllinks
///
/// Properties:
/// * [self] 
/// * [class_] 
abstract class FavoriteImpllinks implements Built<FavoriteImpllinks, FavoriteImpllinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    FavoriteImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FavoriteImpllinksBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, FavoriteImpllinks object,
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
    FavoriteImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteImpllinksBuilder();

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

