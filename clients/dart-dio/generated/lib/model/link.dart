//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link.g.dart';

abstract class Link implements Built<Link, LinkBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    Link._();

    static void _initializeBuilder(LinkBuilder b) => b;

    factory Link([void updates(LinkBuilder b)]) = _$Link;

    @BuiltValueSerializer(custom: true)
    static Serializer<Link> get serializer => _$LinkSerializer();
}

class _$LinkSerializer implements StructuredSerializer<Link> {

    @override
    final Iterable<Type> types = const [Link, _$Link];
    @override
    final String wireName = r'Link';

    @override
    Iterable<Object> serialize(Serializers serializers, Link object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.href != null) {
            result
                ..add(r'href')
                ..add(serializers.serialize(object.href,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Link deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LinkBuilder();

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
                case r'href':
                    result.href = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

