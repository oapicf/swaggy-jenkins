//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitemlatest_run.g.dart';

/// PipelineBranchesitemlatestRun
///
/// Properties:
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
/// * [class_] 
@BuiltValue()
abstract class PipelineBranchesitemlatestRun implements Built<PipelineBranchesitemlatestRun, PipelineBranchesitemlatestRunBuilder> {
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

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineBranchesitemlatestRun._();

  factory PipelineBranchesitemlatestRun([void updates(PipelineBranchesitemlatestRunBuilder b)]) = _$PipelineBranchesitemlatestRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineBranchesitemlatestRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineBranchesitemlatestRun> get serializer => _$PipelineBranchesitemlatestRunSerializer();
}

class _$PipelineBranchesitemlatestRunSerializer implements PrimitiveSerializer<PipelineBranchesitemlatestRun> {
  @override
  final Iterable<Type> types = const [PipelineBranchesitemlatestRun, _$PipelineBranchesitemlatestRun];

  @override
  final String wireName = r'PipelineBranchesitemlatestRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineBranchesitemlatestRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    PipelineBranchesitemlatestRun object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineBranchesitemlatestRunBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'durationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationInMillis = valueDes;
          break;
        case r'estimatedDurationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.estimatedDurationInMillis = valueDes;
          break;
        case r'enQueueTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enQueueTime = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endTime = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.organization = valueDes;
          break;
        case r'pipeline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pipeline = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        case r'runSummary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.runSummary = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'commitId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commitId = valueDes;
          break;
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
  PipelineBranchesitemlatestRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineBranchesitemlatestRunBuilder();
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

