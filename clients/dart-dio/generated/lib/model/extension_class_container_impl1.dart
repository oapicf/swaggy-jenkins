//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/extension_class_container_impl1links.dart';
import 'package:openapi/model/extension_class_container_impl1map.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1.g.dart';

abstract class ExtensionClassContainerImpl1 implements Built<ExtensionClassContainerImpl1, ExtensionClassContainerImpl1Builder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    ExtensionClassContainerImpl1links get links;

    @nullable
    @BuiltValueField(wireName: r'map')
    ExtensionClassContainerImpl1map get map;

    ExtensionClassContainerImpl1._();

    static void _initializeBuilder(ExtensionClassContainerImpl1Builder b) => b;

    factory ExtensionClassContainerImpl1([void updates(ExtensionClassContainerImpl1Builder b)]) = _$ExtensionClassContainerImpl1;

    @BuiltValueSerializer(custom: true)
    static Serializer<ExtensionClassContainerImpl1> get serializer => _$ExtensionClassContainerImpl1Serializer();
}

class _$ExtensionClassContainerImpl1Serializer implements StructuredSerializer<ExtensionClassContainerImpl1> {

    @override
    final Iterable<Type> types = const [ExtensionClassContainerImpl1, _$ExtensionClassContainerImpl1];
    @override
    final String wireName = r'ExtensionClassContainerImpl1';

    @override
    Iterable<Object> serialize(Serializers serializers, ExtensionClassContainerImpl1 object,
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
                    specifiedType: const FullType(ExtensionClassContainerImpl1links)));
        }
        if (object.map != null) {
            result
                ..add(r'map')
                ..add(serializers.serialize(object.map,
                    specifiedType: const FullType(ExtensionClassContainerImpl1map)));
        }
        return result;
    }

    @override
    ExtensionClassContainerImpl1 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassContainerImpl1Builder();

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
                        specifiedType: const FullType(ExtensionClassContainerImpl1links)) as ExtensionClassContainerImpl1links);
                    break;
                case r'map':
                    result.map.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ExtensionClassContainerImpl1map)) as ExtensionClassContainerImpl1map);
                    break;
            }
        }
        return result.build();
    }
}

