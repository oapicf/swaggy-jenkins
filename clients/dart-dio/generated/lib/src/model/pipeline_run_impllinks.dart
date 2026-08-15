//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_run_impllinks.g.dart';

/// PipelineRunImpllinks
///
/// Properties:
/// * [nodes] 
/// * [log] 
/// * [self] 
/// * [actions] 
/// * [steps] 
/// * [class_] 
@BuiltValue()
abstract class PipelineRunImpllinks implements Built<PipelineRunImpllinks, PipelineRunImpllinksBuilder> {
  @BuiltValueField(wireName: r'nodes')
  Link? get nodes;

  @BuiltValueField(wireName: r'log')
  Link? get log;

  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'actions')
  Link? get actions;

  @BuiltValueField(wireName: r'steps')
  Link? get steps;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineRunImpllinks._();

  factory PipelineRunImpllinks([void updates(PipelineRunImpllinksBuilder b)]) = _$PipelineRunImpllinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineRunImpllinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineRunImpllinks> get serializer => _$PipelineRunImpllinksSerializer();
}

class _$PipelineRunImpllinksSerializer implements PrimitiveSerializer<PipelineRunImpllinks> {
  @override
  final Iterable<Type> types = const [PipelineRunImpllinks, _$PipelineRunImpllinks];

  @override
  final String wireName = r'PipelineRunImpllinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineRunImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nodes != null) {
      yield r'nodes';
      yield serializers.serialize(
        object.nodes,
        specifiedType: const FullType(Link),
      );
    }
    if (object.log != null) {
      yield r'log';
      yield serializers.serialize(
        object.log,
        specifiedType: const FullType(Link),
      );
    }
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
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
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
    PipelineRunImpllinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineRunImpllinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.nodes.replace(valueDes);
          break;
        case r'log':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.log.replace(valueDes);
          break;
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
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.steps.replace(valueDes);
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
  PipelineRunImpllinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineRunImpllinksBuilder();
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

