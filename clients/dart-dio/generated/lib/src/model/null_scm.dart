//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'null_scm.g.dart';

/// NullSCM
///
/// Properties:
/// * [class_] 
@BuiltValue()
abstract class NullSCM implements Built<NullSCM, NullSCMBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  NullSCM._();

  factory NullSCM([void updates(NullSCMBuilder b)]) = _$NullSCM;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NullSCMBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NullSCM> get serializer => _$NullSCMSerializer();
}

class _$NullSCMSerializer implements PrimitiveSerializer<NullSCM> {
  @override
  final Iterable<Type> types = const [NullSCM, _$NullSCM];

  @override
  final String wireName = r'NullSCM';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NullSCM object, {
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
    NullSCM object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NullSCMBuilder result,
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
  NullSCM deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NullSCMBuilder();
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

