//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classes_by_class.g.dart';

abstract class ClassesByClass implements Built<ClassesByClass, ClassesByClassBuilder> {

    @nullable
    @BuiltValueField(wireName: r'classes')
    BuiltList<String> get classes;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    ClassesByClass._();

    static void _initializeBuilder(ClassesByClassBuilder b) => b;

    factory ClassesByClass([void updates(ClassesByClassBuilder b)]) = _$ClassesByClass;

    @BuiltValueSerializer(custom: true)
    static Serializer<ClassesByClass> get serializer => _$ClassesByClassSerializer();
}

class _$ClassesByClassSerializer implements StructuredSerializer<ClassesByClass> {

    @override
    final Iterable<Type> types = const [ClassesByClass, _$ClassesByClass];
    @override
    final String wireName = r'ClassesByClass';

    @override
    Iterable<Object> serialize(Serializers serializers, ClassesByClass object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.classes != null) {
            result
                ..add(r'classes')
                ..add(serializers.serialize(object.classes,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
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
    ClassesByClass deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassesByClassBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'classes':
                    result.classes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
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

