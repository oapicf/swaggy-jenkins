//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pipelinelatest_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline.g.dart';

/// Pipeline
///
/// Properties:
/// * [class_] 
/// * [organization] 
/// * [name] 
/// * [displayName] 
/// * [fullName] 
/// * [weatherScore] 
/// * [estimatedDurationInMillis] 
/// * [latestRun] 
@BuiltValue()
abstract class Pipeline implements Built<Pipeline, PipelineBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'weatherScore')
  int? get weatherScore;

  @BuiltValueField(wireName: r'estimatedDurationInMillis')
  int? get estimatedDurationInMillis;

  @BuiltValueField(wireName: r'latestRun')
  PipelinelatestRun? get latestRun;

  Pipeline._();

  factory Pipeline([void updates(PipelineBuilder b)]) = _$Pipeline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Pipeline> get serializer => _$PipelineSerializer();
}

class _$PipelineSerializer implements PrimitiveSerializer<Pipeline> {
  @override
  final Iterable<Type> types = const [Pipeline, _$Pipeline];

  @override
  final String wireName = r'Pipeline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Pipeline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.organization != null) {
      yield r'organization';
      yield serializers.serialize(
        object.organization,
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
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
      );
    }
    if (object.weatherScore != null) {
      yield r'weatherScore';
      yield serializers.serialize(
        object.weatherScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.estimatedDurationInMillis != null) {
      yield r'estimatedDurationInMillis';
      yield serializers.serialize(
        object.estimatedDurationInMillis,
        specifiedType: const FullType(int),
      );
    }
    if (object.latestRun != null) {
      yield r'latestRun';
      yield serializers.serialize(
        object.latestRun,
        specifiedType: const FullType(PipelinelatestRun),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Pipeline object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineBuilder result,
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
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.organization = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'weatherScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weatherScore = valueDes;
          break;
        case r'estimatedDurationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.estimatedDurationInMillis = valueDes;
          break;
        case r'latestRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PipelinelatestRun),
          ) as PipelinelatestRun;
          result.latestRun.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Pipeline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineBuilder();
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

