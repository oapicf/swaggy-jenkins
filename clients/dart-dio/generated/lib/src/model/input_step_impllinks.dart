//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_step_impllinks.g.dart';

/// InputStepImpllinks
///
/// Properties:
/// * [self] 
/// * [class_] 
@BuiltValue()
abstract class InputStepImpllinks implements Built<InputStepImpllinks, InputStepImpllinksBuilder> {
  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  InputStepImpllinks._();

  factory InputStepImpllinks([void updates(InputStepImpllinksBuilder b)]) = _$InputStepImpllinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InputStepImpllinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InputStepImpllinks> get serializer => _$InputStepImpllinksSerializer();
}

class _$InputStepImpllinksSerializer implements PrimitiveSerializer<InputStepImpllinks> {
  @override
  final Iterable<Type> types = const [InputStepImpllinks, _$InputStepImpllinks];

  @override
  final String wireName = r'InputStepImpllinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InputStepImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(Link),
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
    InputStepImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InputStepImpllinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.self.replace(valueDes);
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
  InputStepImpllinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputStepImpllinksBuilder();
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

