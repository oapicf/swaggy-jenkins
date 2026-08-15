//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/branch_impllinks.dart';
import 'package:openapi/src/model/string_parameter_definition.dart';
import 'package:openapi/src/model/branch_implpermissions.dart';
import 'package:openapi/src/model/pipeline_run_impl.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_impl.g.dart';

/// BranchImpl
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [fullDisplayName] 
/// * [fullName] 
/// * [name] 
/// * [organization] 
/// * [parameters] 
/// * [permissions] 
/// * [weatherScore] 
/// * [pullRequest] 
/// * [links] 
/// * [latestRun] 
@BuiltValue()
abstract class BranchImpl implements Built<BranchImpl, BranchImplBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'estimatedDurationInMillis')
  int? get estimatedDurationInMillis;

  @BuiltValueField(wireName: r'fullDisplayName')
  String? get fullDisplayName;

  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'parameters')
  BuiltList<StringParameterDefinition>? get parameters;

  @BuiltValueField(wireName: r'permissions')
  BranchImplpermissions? get permissions;

  @BuiltValueField(wireName: r'weatherScore')
  int? get weatherScore;

  @BuiltValueField(wireName: r'pullRequest')
  String? get pullRequest;

  @BuiltValueField(wireName: r'_links')
  BranchImpllinks? get links;

  @BuiltValueField(wireName: r'latestRun')
  PipelineRunImpl? get latestRun;

  BranchImpl._();

  factory BranchImpl([void updates(BranchImplBuilder b)]) = _$BranchImpl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BranchImplBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BranchImpl> get serializer => _$BranchImplSerializer();
}

class _$BranchImplSerializer implements PrimitiveSerializer<BranchImpl> {
  @override
  final Iterable<Type> types = const [BranchImpl, _$BranchImpl];

  @override
  final String wireName = r'BranchImpl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BranchImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
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
    if (object.estimatedDurationInMillis != null) {
      yield r'estimatedDurationInMillis';
      yield serializers.serialize(
        object.estimatedDurationInMillis,
        specifiedType: const FullType(int),
      );
    }
    if (object.fullDisplayName != null) {
      yield r'fullDisplayName';
      yield serializers.serialize(
        object.fullDisplayName,
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
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)]),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BranchImplpermissions),
      );
    }
    if (object.weatherScore != null) {
      yield r'weatherScore';
      yield serializers.serialize(
        object.weatherScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.pullRequest != null) {
      yield r'pullRequest';
      yield serializers.serialize(
        object.pullRequest,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BranchImpllinks),
      );
    }
    if (object.latestRun != null) {
      yield r'latestRun';
      yield serializers.serialize(
        object.latestRun,
        specifiedType: const FullType(PipelineRunImpl),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BranchImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BranchImplBuilder result,
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
        case r'fullDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullDisplayName = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullName = valueDes;
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
        case r'parameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(StringParameterDefinition)]),
          ) as BuiltList<StringParameterDefinition>?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BranchImplpermissions),
          ) as BranchImplpermissions?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'weatherScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.weatherScore = valueDes;
          break;
        case r'pullRequest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pullRequest = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BranchImpllinks),
          ) as BranchImpllinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'latestRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PipelineRunImpl),
          ) as PipelineRunImpl?;
          if (valueDes == null) continue;
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
  BranchImpl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BranchImplBuilder();
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

