//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/github_repositorieslinks.dart';
import 'package:openapi/model/github_repository.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositories.g.dart';

abstract class GithubRepositories implements Built<GithubRepositories, GithubRepositoriesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    GithubRepositorieslinks get links;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<GithubRepository> get items;

    @nullable
    @BuiltValueField(wireName: r'lastPage')
    int get lastPage;

    @nullable
    @BuiltValueField(wireName: r'nextPage')
    int get nextPage;

    @nullable
    @BuiltValueField(wireName: r'pageSize')
    int get pageSize;

    GithubRepositories._();

    static void _initializeBuilder(GithubRepositoriesBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, GithubRepositories object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    GithubRepositories deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositoriesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'_links':
                    result.links.replace(serializers.deserialize(value,
                        specifiedType: const FullType(GithubRepositorieslinks)) as GithubRepositorieslinks);
                    break;
                case r'items':
                    result.items.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(GithubRepository)])) as BuiltList<GithubRepository>);
                    break;
                case r'lastPage':
                    result.lastPage = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'nextPage':
                    result.nextPage = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'pageSize':
                    result.pageSize = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

