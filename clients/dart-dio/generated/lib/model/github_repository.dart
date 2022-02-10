//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/github_repositorylinks.dart';
import 'package:openapi/model/github_repositorypermissions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repository.g.dart';

abstract class GithubRepository implements Built<GithubRepository, GithubRepositoryBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    GithubRepositorylinks get links;

    @nullable
    @BuiltValueField(wireName: r'defaultBranch')
    String get defaultBranch;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    GithubRepositorypermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;

    GithubRepository._();

    static void _initializeBuilder(GithubRepositoryBuilder b) => b;

    factory GithubRepository([void updates(GithubRepositoryBuilder b)]) = _$GithubRepository;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRepository> get serializer => _$GithubRepositorySerializer();
}

class _$GithubRepositorySerializer implements StructuredSerializer<GithubRepository> {

    @override
    final Iterable<Type> types = const [GithubRepository, _$GithubRepository];
    @override
    final String wireName = r'GithubRepository';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubRepository object,
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
                    specifiedType: const FullType(GithubRepositorylinks)));
        }
        if (object.defaultBranch != null) {
            result
                ..add(r'defaultBranch')
                ..add(serializers.serialize(object.defaultBranch,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.permissions != null) {
            result
                ..add(r'permissions')
                ..add(serializers.serialize(object.permissions,
                    specifiedType: const FullType(GithubRepositorypermissions)));
        }
        if (object.private != null) {
            result
                ..add(r'private')
                ..add(serializers.serialize(object.private,
                    specifiedType: const FullType(bool)));
        }
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubRepository deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositoryBuilder();

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
                        specifiedType: const FullType(GithubRepositorylinks)) as GithubRepositorylinks);
                    break;
                case r'defaultBranch':
                    result.defaultBranch = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'permissions':
                    result.permissions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(GithubRepositorypermissions)) as GithubRepositorypermissions);
                    break;
                case r'private':
                    result.private = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'fullName':
                    result.fullName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

