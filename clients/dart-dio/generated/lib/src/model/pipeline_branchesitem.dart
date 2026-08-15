//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pipeline_branchesitemlatest_run.dart';
import 'package:openapi/src/model/pipeline_branchesitempull_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitem.g.dart';

/// PipelineBranchesitem
///
/// Properties:
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [name] 
/// * [weatherScore] 
/// * [latestRun] 
/// * [organization] 
/// * [pullRequest] 
/// * [totalNumberOfPullRequests] 
/// * [class_] 
@BuiltValue()
abstract class PipelineBranchesitem implements Built<PipelineBranchesitem, PipelineBranchesitemBuilder> {
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'estimatedDurationInMillis')
  int? get estimatedDurationInMillis;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'weatherScore')
  int? get weatherScore;

  @BuiltValueField(wireName: r'latestRun')
  PipelineBranchesitemlatestRun? get latestRun;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'pullRequest')
  PipelineBranchesitempullRequest? get pullRequest;

  @BuiltValueField(wireName: r'totalNumberOfPullRequests')
  int? get totalNumberOfPullRequests;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  PipelineBranchesitem._();

  factory PipelineBranchesitem([void updates(PipelineBranchesitemBuilder b)]) = _$PipelineBranchesitem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineBranchesitemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineBranchesitem> get serializer => _$PipelineBranchesitemSerializer();
}

class _$PipelineBranchesitemSerializer implements PrimitiveSerializer<PipelineBranchesitem> {
  @override
  final Iterable<Type> types = const [PipelineBranchesitem, _$PipelineBranchesitem];

  @override
  final String wireName = r'PipelineBranchesitem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineBranchesitem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.estimatedDurationInMillis != null) {
      yield r'estimatedDurationInMillis';
      yield serializers.serialize(
        object.estimatedDurationInMillis,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.latestRun != null) {
      yield r'latestRun';
      yield serializers.serialize(
        object.latestRun,
        specifiedType: const FullType(PipelineBranchesitemlatestRun),
      );
    }
    if (object.organization != null) {
      yield r'organization';
      yield serializers.serialize(
        object.organization,
        specifiedType: const FullType(String),
      );
    }
    if (object.pullRequest != null) {
      yield r'pullRequest';
      yield serializers.serialize(
        object.pullRequest,
        specifiedType: const FullType(PipelineBranchesitempullRequest),
      );
    }
    if (object.totalNumberOfPullRequests != null) {
      yield r'totalNumberOfPullRequests';
      yield serializers.serialize(
        object.totalNumberOfPullRequests,
        specifiedType: const FullType(int),
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
    PipelineBranchesitem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineBranchesitemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'estimatedDurationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.estimatedDurationInMillis = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'weatherScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.weatherScore = valueDes;
          break;
        case r'latestRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PipelineBranchesitemlatestRun),
          ) as PipelineBranchesitemlatestRun?;
          if (valueDes == null) continue;
          result.latestRun.replace(valueDes);
          break;
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.organization = valueDes;
          break;
        case r'pullRequest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PipelineBranchesitempullRequest),
          ) as PipelineBranchesitempullRequest?;
          if (valueDes == null) continue;
          result.pullRequest.replace(valueDes);
          break;
        case r'totalNumberOfPullRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalNumberOfPullRequests = valueDes;
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
  PipelineBranchesitem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineBranchesitemBuilder();
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

