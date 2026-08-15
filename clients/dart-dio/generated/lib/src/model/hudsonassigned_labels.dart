//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudsonassigned_labels.g.dart';

/// HudsonassignedLabels
///
/// Properties:
/// * [class_] 
@BuiltValue()
abstract class HudsonassignedLabels implements Built<HudsonassignedLabels, HudsonassignedLabelsBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  HudsonassignedLabels._();

  factory HudsonassignedLabels([void updates(HudsonassignedLabelsBuilder b)]) = _$HudsonassignedLabels;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HudsonassignedLabelsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HudsonassignedLabels> get serializer => _$HudsonassignedLabelsSerializer();
}

class _$HudsonassignedLabelsSerializer implements PrimitiveSerializer<HudsonassignedLabels> {
  @override
  final Iterable<Type> types = const [HudsonassignedLabels, _$HudsonassignedLabels];

  @override
  final String wireName = r'HudsonassignedLabels';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HudsonassignedLabels object, {
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
    HudsonassignedLabels object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HudsonassignedLabelsBuilder result,
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
  HudsonassignedLabels deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HudsonassignedLabelsBuilder();
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

