//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitempull_requestlinks.g.dart';

/// PipelineBranchesitempullRequestlinks
///
/// Properties:
/// * [self] 
/// * [class_] 
@BuiltValue()
abstract class PipelineBranchesitempullRequestlinks implements Built<PipelineBranchesitempullRequestlinks, PipelineBranchesitempullRequestlinksBuilder> {
  @BuiltValueField(wireName: r'self')
  String? get self;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineBranchesitempullRequestlinks._();

  factory PipelineBranchesitempullRequestlinks([void updates(PipelineBranchesitempullRequestlinksBuilder b)]) = _$PipelineBranchesitempullRequestlinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineBranchesitempullRequestlinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineBranchesitempullRequestlinks> get serializer => _$PipelineBranchesitempullRequestlinksSerializer();
}

class _$PipelineBranchesitempullRequestlinksSerializer implements PrimitiveSerializer<PipelineBranchesitempullRequestlinks> {
  @override
  final Iterable<Type> types = const [PipelineBranchesitempullRequestlinks, _$PipelineBranchesitempullRequestlinks];

  @override
  final String wireName = r'PipelineBranchesitempullRequestlinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineBranchesitempullRequestlinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
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
    PipelineBranchesitempullRequestlinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineBranchesitempullRequestlinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.self = valueDes;
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
  PipelineBranchesitempullRequestlinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineBranchesitempullRequestlinksBuilder();
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

