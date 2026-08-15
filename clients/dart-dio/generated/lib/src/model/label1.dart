//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'label1.g.dart';

/// Label1
///
/// Properties:
/// * [class_] 
@BuiltValue()
abstract class Label1 implements Built<Label1, Label1Builder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  Label1._();

  factory Label1([void updates(Label1Builder b)]) = _$Label1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Label1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Label1> get serializer => _$Label1Serializer();
}

class _$Label1Serializer implements PrimitiveSerializer<Label1> {
  @override
  final Iterable<Type> types = const [Label1, _$Label1];

  @override
  final String wireName = r'Label1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Label1 object, {
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
    Label1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Label1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  Label1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Label1Builder();
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

