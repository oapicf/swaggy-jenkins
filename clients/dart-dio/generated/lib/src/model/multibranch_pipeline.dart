//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multibranch_pipeline.g.dart';

/// MultibranchPipeline
///
/// Properties:
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [latestRun] 
/// * [name] 
/// * [organization] 
/// * [weatherScore] 
/// * [branchNames] 
/// * [numberOfFailingBranches] 
/// * [numberOfFailingPullRequests] 
/// * [numberOfSuccessfulBranches] 
/// * [numberOfSuccessfulPullRequests] 
/// * [totalNumberOfBranches] 
/// * [totalNumberOfPullRequests] 
/// * [class_] 
@BuiltValue()
abstract class MultibranchPipeline implements Built<MultibranchPipeline, MultibranchPipelineBuilder> {
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'estimatedDurationInMillis')
  int? get estimatedDurationInMillis;

  @BuiltValueField(wireName: r'latestRun')
  String? get latestRun;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'weatherScore')
  int? get weatherScore;

  @BuiltValueField(wireName: r'branchNames')
  BuiltList<String>? get branchNames;

  @BuiltValueField(wireName: r'numberOfFailingBranches')
  int? get numberOfFailingBranches;

  @BuiltValueField(wireName: r'numberOfFailingPullRequests')
  int? get numberOfFailingPullRequests;

  @BuiltValueField(wireName: r'numberOfSuccessfulBranches')
  int? get numberOfSuccessfulBranches;

  @BuiltValueField(wireName: r'numberOfSuccessfulPullRequests')
  int? get numberOfSuccessfulPullRequests;

  @BuiltValueField(wireName: r'totalNumberOfBranches')
  int? get totalNumberOfBranches;

  @BuiltValueField(wireName: r'totalNumberOfPullRequests')
  int? get totalNumberOfPullRequests;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  MultibranchPipeline._();

  factory MultibranchPipeline([void updates(MultibranchPipelineBuilder b)]) = _$MultibranchPipeline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultibranchPipelineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultibranchPipeline> get serializer => _$MultibranchPipelineSerializer();
}

class _$MultibranchPipelineSerializer implements PrimitiveSerializer<MultibranchPipeline> {
  @override
  final Iterable<Type> types = const [MultibranchPipeline, _$MultibranchPipeline];

  @override
  final String wireName = r'MultibranchPipeline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultibranchPipeline object, {
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
    if (object.latestRun != null) {
      yield r'latestRun';
      yield serializers.serialize(
        object.latestRun,
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
    if (object.organization != null) {
      yield r'organization';
      yield serializers.serialize(
        object.organization,
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
    if (object.branchNames != null) {
      yield r'branchNames';
      yield serializers.serialize(
        object.branchNames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.numberOfFailingBranches != null) {
      yield r'numberOfFailingBranches';
      yield serializers.serialize(
        object.numberOfFailingBranches,
        specifiedType: const FullType(int),
      );
    }
    if (object.numberOfFailingPullRequests != null) {
      yield r'numberOfFailingPullRequests';
      yield serializers.serialize(
        object.numberOfFailingPullRequests,
        specifiedType: const FullType(int),
      );
    }
    if (object.numberOfSuccessfulBranches != null) {
      yield r'numberOfSuccessfulBranches';
      yield serializers.serialize(
        object.numberOfSuccessfulBranches,
        specifiedType: const FullType(int),
      );
    }
    if (object.numberOfSuccessfulPullRequests != null) {
      yield r'numberOfSuccessfulPullRequests';
      yield serializers.serialize(
        object.numberOfSuccessfulPullRequests,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalNumberOfBranches != null) {
      yield r'totalNumberOfBranches';
      yield serializers.serialize(
        object.totalNumberOfBranches,
        specifiedType: const FullType(int),
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
    MultibranchPipeline object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MultibranchPipelineBuilder result,
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
        case r'latestRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.latestRun = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.organization = valueDes;
          break;
        case r'weatherScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.weatherScore = valueDes;
          break;
        case r'branchNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.branchNames.replace(valueDes);
          break;
        case r'numberOfFailingBranches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numberOfFailingBranches = valueDes;
          break;
        case r'numberOfFailingPullRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numberOfFailingPullRequests = valueDes;
          break;
        case r'numberOfSuccessfulBranches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numberOfSuccessfulBranches = valueDes;
          break;
        case r'numberOfSuccessfulPullRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numberOfSuccessfulPullRequests = valueDes;
          break;
        case r'totalNumberOfBranches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalNumberOfBranches = valueDes;
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
  MultibranchPipeline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultibranchPipelineBuilder();
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

