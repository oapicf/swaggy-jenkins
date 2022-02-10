//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_impllinks.g.dart';

/// ExtensionClassImpllinks
///
/// Properties:
/// * [self] 
/// * [class_] 
abstract class ExtensionClassImpllinks implements Built<ExtensionClassImpllinks, ExtensionClassImpllinksBuilder> {
    @BuiltValueField(wireName: r'self')
    Link? get self;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    ExtensionClassImpllinks._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ExtensionClassImpllinksBuilder b) => b;

    factory ExtensionClassImpllinks([void updates(ExtensionClassImpllinksBuilder b)]) = _$ExtensionClassImpllinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<ExtensionClassImpllinks> get serializer => _$ExtensionClassImpllinksSerializer();
}

class _$ExtensionClassImpllinksSerializer implements StructuredSerializer<ExtensionClassImpllinks> {
    @override
    final Iterable<Type> types = const [ExtensionClassImpllinks, _$ExtensionClassImpllinks];

    @override
    final String wireName = r'ExtensionClassImpllinks';

    @override
    Iterable<Object?> serialize(Serializers serializers, ExtensionClassImpllinks object,
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
    ExtensionClassImpllinks deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassImpllinksBuilder();

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

