//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/github_repositories.dart';
import 'package:openapi/src/model/github_respository_containerlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_respository_container.g.dart';

/// GithubRespositoryContainer
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [repositories] 
@BuiltValue()
abstract class GithubRespositoryContainer implements Built<GithubRespositoryContainer, GithubRespositoryContainerBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  GithubRespositoryContainerlinks? get links;

  @BuiltValueField(wireName: r'repositories')
  GithubRepositories? get repositories;

  GithubRespositoryContainer._();

  factory GithubRespositoryContainer([void updates(GithubRespositoryContainerBuilder b)]) = _$GithubRespositoryContainer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubRespositoryContainerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubRespositoryContainer> get serializer => _$GithubRespositoryContainerSerializer();
}

class _$GithubRespositoryContainerSerializer implements PrimitiveSerializer<GithubRespositoryContainer> {
  @override
  final Iterable<Type> types = const [GithubRespositoryContainer, _$GithubRespositoryContainer];

  @override
  final String wireName = r'GithubRespositoryContainer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubRespositoryContainer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(GithubRespositoryContainerlinks),
      );
    }
    if (object.repositories != null) {
      yield r'repositories';
      yield serializers.serialize(
        object.repositories,
        specifiedType: const FullType(GithubRepositories),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GithubRespositoryContainer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubRespositoryContainerBuilder result,
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(GithubRespositoryContainerlinks),
          ) as GithubRespositoryContainerlinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'repositories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(GithubRepositories),
          ) as GithubRepositories?;
          if (valueDes == null) continue;
          result.repositories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GithubRespositoryContainer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubRespositoryContainerBuilder();
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

