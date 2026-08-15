//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_projectactions.g.dart';

/// FreeStyleProjectactions
///
/// Properties:
/// * [class_] 
@BuiltValue()
abstract class FreeStyleProjectactions implements Built<FreeStyleProjectactions, FreeStyleProjectactionsBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  FreeStyleProjectactions._();

  factory FreeStyleProjectactions([void updates(FreeStyleProjectactionsBuilder b)]) = _$FreeStyleProjectactions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreeStyleProjectactionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FreeStyleProjectactions> get serializer => _$FreeStyleProjectactionsSerializer();
}

class _$FreeStyleProjectactionsSerializer implements PrimitiveSerializer<FreeStyleProjectactions> {
  @override
  final Iterable<Type> types = const [FreeStyleProjectactions, _$FreeStyleProjectactions];

  @override
  final String wireName = r'FreeStyleProjectactions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FreeStyleProjectactions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    FreeStyleProjectactions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FreeStyleProjectactionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  FreeStyleProjectactions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreeStyleProjectactionsBuilder();
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

