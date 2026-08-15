//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_impllinks.g.dart';

/// PipelineImpllinks
///
/// Properties:
/// * [self] 
/// * [actions] 
/// * [runs] 
/// * [queue] 
/// * [class_] 
@BuiltValue()
abstract class PipelineImpllinks implements Built<PipelineImpllinks, PipelineImpllinksBuilder> {
  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'actions')
  Link? get actions;

  @BuiltValueField(wireName: r'runs')
  Link? get runs;

  @BuiltValueField(wireName: r'queue')
  Link? get queue;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineImpllinks._();

  factory PipelineImpllinks([void updates(PipelineImpllinksBuilder b)]) = _$PipelineImpllinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineImpllinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineImpllinks> get serializer => _$PipelineImpllinksSerializer();
}

class _$PipelineImpllinksSerializer implements PrimitiveSerializer<PipelineImpllinks> {
  @override
  final Iterable<Type> types = const [PipelineImpllinks, _$PipelineImpllinks];

  @override
  final String wireName = r'PipelineImpllinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(Link),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(Link),
      );
    }
    if (object.runs != null) {
      yield r'runs';
      yield serializers.serialize(
        object.runs,
        specifiedType: const FullType(Link),
      );
    }
    if (object.queue != null) {
      yield r'queue';
      yield serializers.serialize(
        object.queue,
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
    PipelineImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineImpllinksBuilder result,
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
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        case r'runs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.runs.replace(valueDes);
          break;
        case r'queue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.queue.replace(valueDes);
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
  PipelineImpllinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineImpllinksBuilder();
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

