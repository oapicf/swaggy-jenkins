//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_organizationlinks.g.dart';

/// GithubOrganizationlinks
///
/// Properties:
/// * [repositories] 
/// * [self] 
/// * [class_] 
@BuiltValue()
abstract class GithubOrganizationlinks implements Built<GithubOrganizationlinks, GithubOrganizationlinksBuilder> {
  @BuiltValueField(wireName: r'repositories')
  Link? get repositories;

  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  GithubOrganizationlinks._();

  factory GithubOrganizationlinks([void updates(GithubOrganizationlinksBuilder b)]) = _$GithubOrganizationlinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubOrganizationlinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubOrganizationlinks> get serializer => _$GithubOrganizationlinksSerializer();
}

class _$GithubOrganizationlinksSerializer implements PrimitiveSerializer<GithubOrganizationlinks> {
  @override
  final Iterable<Type> types = const [GithubOrganizationlinks, _$GithubOrganizationlinks];

  @override
  final String wireName = r'GithubOrganizationlinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubOrganizationlinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.repositories != null) {
      yield r'repositories';
      yield serializers.serialize(
        object.repositories,
        specifiedType: const FullType(Link),
      );
    }
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(Link),
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
    GithubOrganizationlinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubOrganizationlinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'repositories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.repositories.replace(valueDes);
          break;
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Link),
          ) as Link?;
          if (valueDes == null) continue;
          result.self.replace(valueDes);
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
  GithubOrganizationlinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubOrganizationlinksBuilder();
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

