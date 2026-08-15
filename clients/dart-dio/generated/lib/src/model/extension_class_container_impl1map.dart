//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/extension_class_impl.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extension_class_container_impl1map.g.dart';

/// ExtensionClassContainerImpl1map
///
/// Properties:
/// * [ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl] 
/// * [ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl] 
/// * [class_] 
@BuiltValue()
abstract class ExtensionClassContainerImpl1map implements Built<ExtensionClassContainerImpl1map, ExtensionClassContainerImpl1mapBuilder> {
  @BuiltValueField(wireName: r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl')
  ExtensionClassImpl? get ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl;

  @BuiltValueField(wireName: r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')
  ExtensionClassImpl? get ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  ExtensionClassContainerImpl1map._();

  factory ExtensionClassContainerImpl1map([void updates(ExtensionClassContainerImpl1mapBuilder b)]) = _$ExtensionClassContainerImpl1map;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtensionClassContainerImpl1mapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtensionClassContainerImpl1map> get serializer => _$ExtensionClassContainerImpl1mapSerializer();
}

class _$ExtensionClassContainerImpl1mapSerializer implements PrimitiveSerializer<ExtensionClassContainerImpl1map> {
  @override
  final Iterable<Type> types = const [ExtensionClassContainerImpl1map, _$ExtensionClassContainerImpl1map];

  @override
  final String wireName = r'ExtensionClassContainerImpl1map';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtensionClassContainerImpl1map object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl != null) {
      yield r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl';
      yield serializers.serialize(
        object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl,
        specifiedType: const FullType(ExtensionClassImpl),
      );
    }
    if (object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl != null) {
      yield r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl';
      yield serializers.serialize(
        object.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl,
        specifiedType: const FullType(ExtensionClassImpl),
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
    ExtensionClassContainerImpl1map object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtensionClassContainerImpl1mapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'io.jenkins.blueocean.service.embedded.rest.PipelineImpl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExtensionClassImpl),
          ) as ExtensionClassImpl?;
          if (valueDes == null) continue;
          result.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodPipelineImpl.replace(valueDes);
          break;
        case r'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExtensionClassImpl),
          ) as ExtensionClassImpl?;
          if (valueDes == null) continue;
          result.ioPeriodJenkinsPeriodBlueoceanPeriodServicePeriodEmbeddedPeriodRestPeriodMultiBranchPipelineImpl.replace(valueDes);
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
  ExtensionClassContainerImpl1map deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtensionClassContainerImpl1mapBuilder();
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

