//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/extension_class_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_impl.g.dart';

abstract class ExtensionClassImpl implements Built<ExtensionClassImpl, ExtensionClassImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    ExtensionClassImpllinks get links;

    @nullable
    @BuiltValueField(wireName: r'classes')
    BuiltList<String> get classes;

    ExtensionClassImpl._();

    static void _initializeBuilder(ExtensionClassImplBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, ExtensionClassImpl object,
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
    ExtensionClassImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExtensionClassImplBuilder();

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
                        specifiedType: const FullType(ExtensionClassImpllinks)) as ExtensionClassImpllinks);
                    break;
                case r'classes':
                    result.classes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
            }
        }
        return result.build();
    }
}

