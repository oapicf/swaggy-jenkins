//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cause_user_id_cause.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cause_action.g.dart';

/// CauseAction
///
/// Properties:
/// * [class_] 
/// * [causes] 
@BuiltValue()
abstract class CauseAction implements Built<CauseAction, CauseActionBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'causes')
  BuiltList<CauseUserIdCause>? get causes;

  CauseAction._();

  factory CauseAction([void updates(CauseActionBuilder b)]) = _$CauseAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CauseActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CauseAction> get serializer => _$CauseActionSerializer();
}

class _$CauseActionSerializer implements PrimitiveSerializer<CauseAction> {
  @override
  final Iterable<Type> types = const [CauseAction, _$CauseAction];

  @override
  final String wireName = r'CauseAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CauseAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.causes != null) {
      yield r'causes';
      yield serializers.serialize(
        object.causes,
        specifiedType: const FullType(BuiltList, [FullType(CauseUserIdCause)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CauseAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CauseActionBuilder result,
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
        case r'causes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CauseUserIdCause)]),
          ) as BuiltList<CauseUserIdCause>;
          result.causes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CauseAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CauseActionBuilder();
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

