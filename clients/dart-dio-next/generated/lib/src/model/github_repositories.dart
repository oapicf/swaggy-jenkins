//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubRepositoriesBuilder b) => b;

    factory GithubRepositories([void updates(GithubRepositoriesBuilder b)]) = _$GithubRepositories;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRepositories> get serializer => _$GithubRepositoriesSerializer();
}

class _$GithubRepositoriesSerializer implements StructuredSerializer<GithubRepositories> {
    @override
    final Iterable<Type> types = const [GithubRepositories, _$GithubRepositories];

    @override
    final String wireName = r'GithubRepositories';

    @override
    Iterable<Object?> serialize(Serializers serializers, GithubRepositories object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(GithubRepositorieslinks)));
        }
        if (object.items != null) {
            result
                ..add(r'items')
                ..add(serializers.serialize(object.items,
                    specifiedType: const FullType(BuiltList, [FullType(GithubRepository)])));
        }
        if (object.lastPage != null) {
            result
                ..add(r'lastPage')
                ..add(serializers.serialize(object.lastPage,
                    specifiedType: const FullType(int)));
        }
        if (object.nextPage != null) {
            result
                ..add(r'nextPage')
                ..add(serializers.serialize(object.nextPage,
                    specifiedType: const FullType(int)));
        }
        if (object.pageSize != null) {
            result
                ..add(r'pageSize')
                ..add(serializers.serialize(object.pageSize,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    GithubRepositories deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositoriesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(GithubRepositorieslinks)) as GithubRepositorieslinks;
                    result.links.replace(valueDes);
                    break;
                case r'items':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(GithubRepository)])) as BuiltList<GithubRepository>;
                    result.items.replace(valueDes);
                    break;
                case r'lastPage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.lastPage = valueDes;
                    break;
                case r'nextPage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.nextPage = valueDes;
                    break;
                case r'pageSize':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.pageSize = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

