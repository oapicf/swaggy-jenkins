//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pipeline_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_impl.g.dart';

/// PipelineImpl
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [fullName] 
/// * [latestRun] 
/// * [name] 
/// * [organization] 
/// * [weatherScore] 
/// * [links] 
@BuiltValue()
abstract class PipelineImpl implements Built<PipelineImpl, PipelineImplBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'estimatedDurationInMillis')
  int? get estimatedDurationInMillis;

  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'latestRun')
  String? get latestRun;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'weatherScore')
  int? get weatherScore;

  @BuiltValueField(wireName: r'_links')
  PipelineImpllinks? get links;

  PipelineImpl._();

  factory PipelineImpl([void updates(PipelineImplBuilder b)]) = _$PipelineImpl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PipelineImplBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PipelineImpl> get serializer => _$PipelineImplSerializer();
}

class _$PipelineImplSerializer implements PrimitiveSerializer<PipelineImpl> {
  @override
  final Iterable<Type> types = const [PipelineImpl, _$PipelineImpl];

  @override
  final String wireName = r'PipelineImpl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PipelineImpl object, {
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
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
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
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(PipelineImpllinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PipelineImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PipelineImplBuilder result,
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
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'estimatedDurationInMillis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.estimatedDurationInMillis = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'latestRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.latestRun = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'organization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.organization = valueDes;
          break;
        case r'weatherScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weatherScore = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PipelineImpllinks),
          ) as PipelineImpllinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PipelineImpl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PipelineImplBuilder();
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

