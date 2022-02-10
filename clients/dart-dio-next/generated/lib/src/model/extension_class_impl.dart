//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/extension_class_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_impl.g.dart';

/// ExtensionClassImpl
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [classes] 
abstract class ExtensionClassImpl implements Built<ExtensionClassImpl, ExtensionClassImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    ExtensionClassImpllinks? get links;

    @BuiltValueField(wireName: r'classes')
    BuiltList<String>? get classes;

    ExtensionClassImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ExtensionClassImplBuilder b) => b;

    factory ExtensionClassImpl([void updates(ExtensionClassImplBuilder b)]) = _$ExtensionClassImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<ExtensionClassImpl> get serializer => _$ExtensionClassImplSerializer();
}

class _$ExtensionClassImplSerializer implements StructuredSerializer<ExtensionClassImpl> {
    @override
    final Iterable<Type> types = const [ExtensionClassImpl, _$ExtensionClassImpl];

    @override
    final String wireName = r'ExtensionClassImpl';

    @override
    Iterable<Object?> serialize(Serializers serializers, ExtensionClassImpl object,
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
                    specifiedType: const FullType(ExtensionClassImpllinks)));
        }
        if (object.classes != null) {
            result
                ..add(r'classes')
                ..add(serializers.serialize(object.classes,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    ExtensionClassImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassImplBuilder();

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
                        specifiedType: const FullType(ExtensionClassImpllinks)) as ExtensionClassImpllinks;
                    result.links.replace(valueDes);
                    break;
                case r'classes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.classes.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

