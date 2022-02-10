//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classes_by_class.g.dart';

/// ClassesByClass
///
/// Properties:
/// * [classes] 
/// * [class_] 
abstract class ClassesByClass implements Built<ClassesByClass, ClassesByClassBuilder> {
    @BuiltValueField(wireName: r'classes')
    BuiltList<String>? get classes;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    ClassesByClass._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ClassesByClassBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, ClassesByClass object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    ClassesByClass deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ClassesByClassBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'classes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.classes.replace(valueDes);
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

