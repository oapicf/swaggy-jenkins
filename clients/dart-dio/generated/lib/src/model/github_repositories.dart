//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/github_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/github_repositorieslinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositories.g.dart';

/// GithubRepositories
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [items] 
/// * [lastPage] 
/// * [nextPage] 
/// * [pageSize] 
@BuiltValue()
abstract class GithubRepositories implements Built<GithubRepositories, GithubRepositoriesBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'_links')
  GithubRepositorieslinks? get links;

  @BuiltValueField(wireName: r'items')
  BuiltList<GithubRepository>? get items;

  @BuiltValueField(wireName: r'lastPage')
  int? get lastPage;

  @BuiltValueField(wireName: r'nextPage')
  int? get nextPage;

  @BuiltValueField(wireName: r'pageSize')
  int? get pageSize;

  GithubRepositories._();

  factory GithubRepositories([void updates(GithubRepositoriesBuilder b)]) = _$GithubRepositories;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubRepositoriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubRepositories> get serializer => _$GithubRepositoriesSerializer();
}

class _$GithubRepositoriesSerializer implements PrimitiveSerializer<GithubRepositories> {
  @override
  final Iterable<Type> types = const [GithubRepositories, _$GithubRepositories];

  @override
  final String wireName = r'GithubRepositories';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubRepositories object, {
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
        specifiedType: const FullType(GithubRepositorieslinks),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(GithubRepository)]),
      );
    }
    if (object.lastPage != null) {
      yield r'lastPage';
      yield serializers.serialize(
        object.lastPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.nextPage != null) {
      yield r'nextPage';
      yield serializers.serialize(
        object.nextPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GithubRepositories object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubRepositoriesBuilder result,
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
            specifiedType: const FullType(GithubRepositorieslinks),
          ) as GithubRepositorieslinks;
          result.links.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GithubRepository)]),
          ) as BuiltList<GithubRepository>;
          result.items.replace(valueDes);
          break;
        case r'lastPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastPage = valueDes;
          break;
        case r'nextPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nextPage = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GithubRepositories deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubRepositoriesBuilder();
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

