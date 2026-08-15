//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_crumb_issuer.g.dart';

/// DefaultCrumbIssuer
///
/// Properties:
/// * [class_] 
/// * [crumb] 
/// * [crumbRequestField] 
@BuiltValue()
abstract class DefaultCrumbIssuer implements Built<DefaultCrumbIssuer, DefaultCrumbIssuerBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'crumb')
  String? get crumb;

  @BuiltValueField(wireName: r'crumbRequestField')
  String? get crumbRequestField;

  DefaultCrumbIssuer._();

  factory DefaultCrumbIssuer([void updates(DefaultCrumbIssuerBuilder b)]) = _$DefaultCrumbIssuer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultCrumbIssuerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultCrumbIssuer> get serializer => _$DefaultCrumbIssuerSerializer();
}

class _$DefaultCrumbIssuerSerializer implements PrimitiveSerializer<DefaultCrumbIssuer> {
  @override
  final Iterable<Type> types = const [DefaultCrumbIssuer, _$DefaultCrumbIssuer];

  @override
  final String wireName = r'DefaultCrumbIssuer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultCrumbIssuer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.crumb != null) {
      yield r'crumb';
      yield serializers.serialize(
        object.crumb,
        specifiedType: const FullType(String),
      );
    }
    if (object.crumbRequestField != null) {
      yield r'crumbRequestField';
      yield serializers.serialize(
        object.crumbRequestField,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultCrumbIssuer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultCrumbIssuerBuilder result,
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
        case r'crumb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.crumb = valueDes;
          break;
        case r'crumbRequestField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.crumbRequestField = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DefaultCrumbIssuer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultCrumbIssuerBuilder();
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

