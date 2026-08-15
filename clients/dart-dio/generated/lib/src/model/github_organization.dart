//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/github_organizationlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_organization.g.dart';

/// GithubOrganization
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [jenkinsOrganizationPipeline] 
/// * [name] 
@BuiltValue()
abstract class GithubOrganization implements Built<GithubOrganization, GithubOrganizationBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  GithubOrganizationlinks? get links;

  @BuiltValueField(wireName: r'jenkinsOrganizationPipeline')
  bool? get jenkinsOrganizationPipeline;

  @BuiltValueField(wireName: r'name')
  String? get name;

  GithubOrganization._();

  factory GithubOrganization([void updates(GithubOrganizationBuilder b)]) = _$GithubOrganization;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubOrganizationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubOrganization> get serializer => _$GithubOrganizationSerializer();
}

class _$GithubOrganizationSerializer implements PrimitiveSerializer<GithubOrganization> {
  @override
  final Iterable<Type> types = const [GithubOrganization, _$GithubOrganization];

  @override
  final String wireName = r'GithubOrganization';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubOrganization object, {
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
        specifiedType: const FullType(GithubOrganizationlinks),
      );
    }
    if (object.jenkinsOrganizationPipeline != null) {
      yield r'jenkinsOrganizationPipeline';
      yield serializers.serialize(
        object.jenkinsOrganizationPipeline,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GithubOrganization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubOrganizationBuilder result,
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GithubOrganizationlinks),
          ) as GithubOrganizationlinks;
          result.links.replace(valueDes);
          break;
        case r'jenkinsOrganizationPipeline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.jenkinsOrganizationPipeline = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GithubOrganization deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubOrganizationBuilder();
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

