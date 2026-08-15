//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run_nodeedges.g.dart';

/// PipelineRunNodeedges
///
/// Properties:
/// * [id] 
/// * [class_] 
@BuiltValue()
abstract class PipelineRunNodeedges implements Built<PipelineRunNodeedges, PipelineRunNodeedgesBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineRunNodeedges._();

  factory PipelineRunNodeedges([void updates(PipelineRunNodeedgesBuilder b)]) = _$PipelineRunNodeedges;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineRunNodeedgesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineRunNodeedges> get serializer => _$PipelineRunNodeedgesSerializer();
}

class _$PipelineRunNodeedgesSerializer implements PrimitiveSerializer<PipelineRunNodeedges> {
  @override
  final Iterable<Type> types = const [PipelineRunNodeedges, _$PipelineRunNodeedges];

  @override
  final String wireName = r'PipelineRunNodeedges';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineRunNodeedges object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
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
    PipelineRunNodeedges object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineRunNodeedgesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
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
  PipelineRunNodeedges deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineRunNodeedgesBuilder();
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

