//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/favorite_impllinks.dart';
import 'package:openapi/model/pipeline_impl.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_impl.g.dart';

abstract class FavoriteImpl implements Built<FavoriteImpl, FavoriteImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    FavoriteImpllinks get links;

    @nullable
    @BuiltValueField(wireName: r'item')
    PipelineImpl get item;

    FavoriteImpl._();

    static void _initializeBuilder(FavoriteImplBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, FavoriteImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    FavoriteImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteImplBuilder();

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
                case r'_links':
                    result.links.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FavoriteImpllinks)) as FavoriteImpllinks);
                    break;
                case r'item':
                    result.item.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelineImpl)) as PipelineImpl);
                    break;
            }
        }
        return result.build();
    }
}

