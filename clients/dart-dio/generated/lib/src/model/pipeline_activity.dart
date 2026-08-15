//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pipeline_activityartifacts.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_activity.g.dart';

/// PipelineActivity
///
/// Properties:
/// * [class_] 
/// * [artifacts] 
/// * [durationInMillis] 
/// * [estimatedDurationInMillis] 
/// * [enQueueTime] 
/// * [endTime] 
/// * [id] 
/// * [organization] 
/// * [pipeline] 
/// * [result] 
/// * [runSummary] 
/// * [startTime] 
/// * [state] 
/// * [type] 
/// * [commitId] 
@BuiltValue()
abstract class PipelineActivity implements Built<PipelineActivity, PipelineActivityBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'artifacts')
  BuiltList<PipelineActivityartifacts>? get artifacts;

  @BuiltValueField(wireName: r'durationInMillis')
  int? get durationInMillis;

  @BuiltValueField(wireName: r'estimatedDurationInMillis')
  int? get estimatedDurationInMillis;

  @BuiltValueField(wireName: r'enQueueTime')
  String? get enQueueTime;

  @BuiltValueField(wireName: r'endTime')
  String? get endTime;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'pipeline')
  String? get pipeline;

  @BuiltValueField(wireName: r'result')
  String? get result;

  @BuiltValueField(wireName: r'runSummary')
  String? get runSummary;

  @BuiltValueField(wireName: r'startTime')
  String? get startTime;

  @BuiltValueField(wireName: r'state')
  String? get state;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'commitId')
  String? get commitId;

  PipelineActivity._();

  factory PipelineActivity([void updates(PipelineActivityBuilder b)]) = _$PipelineActivity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineActivity> get serializer => _$PipelineActivitySerializer();
}

class _$PipelineActivitySerializer implements PrimitiveSerializer<PipelineActivity> {
  @override
  final Iterable<Type> types = const [PipelineActivity, _$PipelineActivity];

  @override
  final String wireName = r'PipelineActivity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.artifacts != null) {
      yield r'artifacts';
      yield serializers.serialize(
        object.artifacts,
        specifiedType: const FullType(BuiltList, [FullType(PipelineActivityartifacts)]),
      );
    }
    if (object.durationInMillis != null) {
      yield r'durationInMillis';
      yield serializers.serialize(
        object.durationInMillis,
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
    if (object.enQueueTime != null) {
      yield r'enQueueTime';
      yield serializers.serialize(
        object.enQueueTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.pipeline != null) {
      yield r'pipeline';
      yield serializers.serialize(
        object.pipeline,
        specifiedType: const FullType(String),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(String),
      );
    }
    if (object.runSummary != null) {
      yield r'runSummary';
      yield serializers.serialize(
        object.runSummary,
        specifiedType: const FullType(String),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.commitId != null) {
      yield r'commitId';
      yield serializers.serialize(
        object.commitId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PipelineActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineActivityBuilder result,
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
        case r'artifacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(PipelineActivityartifacts)]),
          ) as BuiltList<PipelineActivityartifacts>?;
          if (valueDes == null) continue;
          result.artifacts.replace(valueDes);
          break;
        case r'durationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.durationInMillis = valueDes;
          break;
        case r'estimatedDurationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.estimatedDurationInMillis = valueDes;
          break;
        case r'enQueueTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.enQueueTime = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.organization = valueDes;
          break;
        case r'pipeline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pipeline = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.result = valueDes;
          break;
        case r'runSummary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.runSummary = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'commitId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commitId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PipelineActivity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineActivityBuilder();
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

