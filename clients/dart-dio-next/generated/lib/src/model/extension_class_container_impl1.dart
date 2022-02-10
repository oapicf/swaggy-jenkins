//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/extension_class_container_impl1map.dart';
import 'package:openapi/src/model/extension_class_container_impl1links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1.g.dart';

/// ExtensionClassContainerImpl1
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [map] 
abstract class ExtensionClassContainerImpl1 implements Built<ExtensionClassContainerImpl1, ExtensionClassContainerImpl1Builder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    ExtensionClassContainerImpl1links? get links;

    @BuiltValueField(wireName: r'map')
    ExtensionClassContainerImpl1map? get map;

    ExtensionClassContainerImpl1._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ExtensionClassContainerImpl1Builder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, ExtensionClassContainerImpl1 object,
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
    ExtensionClassContainerImpl1 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassContainerImpl1Builder();

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
                        specifiedType: const FullType(ExtensionClassContainerImpl1links)) as ExtensionClassContainerImpl1links;
                    result.links.replace(valueDes);
                    break;
                case r'map':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ExtensionClassContainerImpl1map)) as ExtensionClassContainerImpl1map;
                    result.map.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

