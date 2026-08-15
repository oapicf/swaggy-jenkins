//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'classes_by_class.g.dart';

/// ClassesByClass
///
/// Properties:
/// * [classes] 
/// * [class_] 
@BuiltValue()
abstract class ClassesByClass implements Built<ClassesByClass, ClassesByClassBuilder> {
  @BuiltValueField(wireName: r'classes')
  BuiltList<String>? get classes;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  ClassesByClass._();

  factory ClassesByClass([void updates(ClassesByClassBuilder b)]) = _$ClassesByClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClassesByClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClassesByClass> get serializer => _$ClassesByClassSerializer();
}

class _$ClassesByClassSerializer implements PrimitiveSerializer<ClassesByClass> {
  @override
  final Iterable<Type> types = const [ClassesByClass, _$ClassesByClass];

  @override
  final String wireName = r'ClassesByClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClassesByClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClassesByClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClassesByClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.classes.replace(valueDes);
          break;
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.class_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClassesByClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassesByClassBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

