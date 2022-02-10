//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1links.g.dart';

abstract class ExtensionClassContainerImpl1links implements Built<ExtensionClassContainerImpl1links, ExtensionClassContainerImpl1linksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    ExtensionClassContainerImpl1links._();

    static void _initializeBuilder(ExtensionClassContainerImpl1linksBuilder b) => b;

    factory ExtensionClassContainerImpl1links([void updates(ExtensionClassContainerImpl1linksBuilder b)]) = _$ExtensionClassContainerImpl1links;

    @BuiltValueSerializer(custom: true)
    static Serializer<ExtensionClassContainerImpl1links> get serializer => _$ExtensionClassContainerImpl1linksSerializer();
}

class _$ExtensionClassContainerImpl1linksSerializer implements StructuredSerializer<ExtensionClassContainerImpl1links> {

    @override
    final Iterable<Type> types = const [ExtensionClassContainerImpl1links, _$ExtensionClassContainerImpl1links];
    @override
    final String wireName = r'ExtensionClassContainerImpl1links';

    @override
    Iterable<Object> serialize(Serializers serializers, ExtensionClassContainerImpl1links object,
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
    ExtensionClassContainerImpl1links deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassContainerImpl1linksBuilder();

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

