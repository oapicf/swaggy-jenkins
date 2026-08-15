//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/input_step_impllinks.dart';
import 'package:openapi/src/model/string_parameter_definition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_step_impl.g.dart';

/// InputStepImpl
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [id] 
/// * [message] 
/// * [ok] 
/// * [parameters] 
/// * [submitter] 
@BuiltValue()
abstract class InputStepImpl implements Built<InputStepImpl, InputStepImplBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  InputStepImpllinks? get links;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'ok')
  String? get ok;

  @BuiltValueField(wireName: r'parameters')
  BuiltList<StringParameterDefinition>? get parameters;

  @BuiltValueField(wireName: r'submitter')
  String? get submitter;

  InputStepImpl._();

  factory InputStepImpl([void updates(InputStepImplBuilder b)]) = _$InputStepImpl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InputStepImplBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InputStepImpl> get serializer => _$InputStepImplSerializer();
}

class _$InputStepImplSerializer implements PrimitiveSerializer<InputStepImpl> {
  @override
  final Iterable<Type> types = const [InputStepImpl, _$InputStepImpl];

  @override
  final String wireName = r'InputStepImpl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InputStepImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(InputStepImpllinks),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.ok != null) {
      yield r'ok';
      yield serializers.serialize(
        object.ok,
        specifiedType: const FullType(String),
      );
    }
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)]),
      );
    }
    if (object.submitter != null) {
      yield r'submitter';
      yield serializers.serialize(
        object.submitter,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InputStepImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InputStepImplBuilder result,
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(InputStepImpllinks),
          ) as InputStepImpllinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ok = valueDes;
          break;
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(StringParameterDefinition)]),
          ) as BuiltList<StringParameterDefinition>?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'submitter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.submitter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InputStepImpl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputStepImplBuilder();
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

