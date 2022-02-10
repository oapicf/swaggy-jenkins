//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/pipeline_impl.dart';
import 'package:openapi/src/model/favorite_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_impl.g.dart';

/// FavoriteImpl
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [item] 
abstract class FavoriteImpl implements Built<FavoriteImpl, FavoriteImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    FavoriteImpllinks? get links;

    @BuiltValueField(wireName: r'item')
    PipelineImpl? get item;

    FavoriteImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FavoriteImplBuilder b) => b;

    factory FavoriteImpl([void updates(FavoriteImplBuilder b)]) = _$FavoriteImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<FavoriteImpl> get serializer => _$FavoriteImplSerializer();
}

class _$FavoriteImplSerializer implements StructuredSerializer<FavoriteImpl> {
    @override
    final Iterable<Type> types = const [FavoriteImpl, _$FavoriteImpl];

    @override
    final String wireName = r'FavoriteImpl';

    @override
    Iterable<Object?> serialize(Serializers serializers, FavoriteImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(FavoriteImpllinks)));
        }
        if (object.item != null) {
            result
                ..add(r'item')
                ..add(serializers.serialize(object.item,
                    specifiedType: const FullType(PipelineImpl)));
        }
        return result;
    }

    @override
    FavoriteImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteImplBuilder();

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
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FavoriteImpllinks)) as FavoriteImpllinks;
                    result.links.replace(valueDes);
                    break;
                case r'item':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PipelineImpl)) as PipelineImpl;
                    result.item.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

