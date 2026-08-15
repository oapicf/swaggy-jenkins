//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/string_parameter_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_parameter_definition.g.dart';

/// StringParameterDefinition
///
/// Properties:
/// * [class_] 
/// * [defaultParameterValue] 
/// * [description] 
/// * [name] 
/// * [type] 
@BuiltValue()
abstract class StringParameterDefinition implements Built<StringParameterDefinition, StringParameterDefinitionBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'defaultParameterValue')
  StringParameterValue? get defaultParameterValue;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  String? get type;

  StringParameterDefinition._();

  factory StringParameterDefinition([void updates(StringParameterDefinitionBuilder b)]) = _$StringParameterDefinition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StringParameterDefinitionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StringParameterDefinition> get serializer => _$StringParameterDefinitionSerializer();
}

class _$StringParameterDefinitionSerializer implements PrimitiveSerializer<StringParameterDefinition> {
  @override
  final Iterable<Type> types = const [StringParameterDefinition, _$StringParameterDefinition];

  @override
  final String wireName = r'StringParameterDefinition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StringParameterDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultParameterValue != null) {
      yield r'defaultParameterValue';
      yield serializers.serialize(
        object.defaultParameterValue,
        specifiedType: const FullType(StringParameterValue),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StringParameterDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StringParameterDefinitionBuilder result,
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
        case r'defaultParameterValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StringParameterValue),
          ) as StringParameterValue?;
          if (valueDes == null) continue;
          result.defaultParameterValue.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StringParameterDefinition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StringParameterDefinitionBuilder();
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

