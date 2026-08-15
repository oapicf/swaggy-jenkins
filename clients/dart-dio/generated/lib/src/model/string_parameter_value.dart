//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_parameter_value.g.dart';

/// StringParameterValue
///
/// Properties:
/// * [class_] 
/// * [name] 
/// * [value] 
@BuiltValue()
abstract class StringParameterValue implements Built<StringParameterValue, StringParameterValueBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'value')
  String? get value;

  StringParameterValue._();

  factory StringParameterValue([void updates(StringParameterValueBuilder b)]) = _$StringParameterValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StringParameterValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StringParameterValue> get serializer => _$StringParameterValueSerializer();
}

class _$StringParameterValueSerializer implements PrimitiveSerializer<StringParameterValue> {
  @override
  final Iterable<Type> types = const [StringParameterValue, _$StringParameterValue];

  @override
  final String wireName = r'StringParameterValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StringParameterValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StringParameterValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StringParameterValueBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StringParameterValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StringParameterValueBuilder();
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

