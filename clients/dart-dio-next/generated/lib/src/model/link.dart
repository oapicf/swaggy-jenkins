//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link.g.dart';

/// Link
///
/// Properties:
/// * [class_] 
/// * [href] 
abstract class Link implements Built<Link, LinkBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'href')
    String? get href;

    Link._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LinkBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, Link object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    Link deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LinkBuilder();

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
                case r'href':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.href = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

