//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositorylinks.g.dart';

/// GithubRepositorylinks
///
/// Properties:
/// * [self] 
/// * [class_] 
@BuiltValue()
abstract class GithubRepositorylinks implements Built<GithubRepositorylinks, GithubRepositorylinksBuilder> {
  @BuiltValueField(wireName: r'self')
  Link? get self;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  GithubRepositorylinks._();

  factory GithubRepositorylinks([void updates(GithubRepositorylinksBuilder b)]) = _$GithubRepositorylinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubRepositorylinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubRepositorylinks> get serializer => _$GithubRepositorylinksSerializer();
}

class _$GithubRepositorylinksSerializer implements PrimitiveSerializer<GithubRepositorylinks> {
  @override
  final Iterable<Type> types = const [GithubRepositorylinks, _$GithubRepositorylinks];

  @override
  final String wireName = r'GithubRepositorylinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubRepositorylinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    GithubRepositorylinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubRepositorylinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Link),
          ) as Link;
          result.self.replace(valueDes);
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
  GithubRepositorylinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubRepositorylinksBuilder();
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

