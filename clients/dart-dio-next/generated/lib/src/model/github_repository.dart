//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/github_repositorypermissions.dart';
import 'package:openapi/src/model/github_repositorylinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repository.g.dart';

/// GithubRepository
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [defaultBranch] 
/// * [description] 
/// * [name] 
/// * [permissions] 
/// * [private] 
/// * [fullName] 
abstract class GithubRepository implements Built<GithubRepository, GithubRepositoryBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    GithubRepositorylinks? get links;

    @BuiltValueField(wireName: r'defaultBranch')
    String? get defaultBranch;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'permissions')
    GithubRepositorypermissions? get permissions;

    @BuiltValueField(wireName: r'private')
    bool? get private;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    GithubRepository._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubRepositoryBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, GithubRepository object,
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
    GithubRepository deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositoryBuilder();

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
                        specifiedType: const FullType(GithubRepositorylinks)) as GithubRepositorylinks;
                    result.links.replace(valueDes);
                    break;
                case r'defaultBranch':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.defaultBranch = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'permissions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(GithubRepositorypermissions)) as GithubRepositorypermissions;
                    result.permissions.replace(valueDes);
                    break;
                case r'private':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.private = valueDes;
                    break;
                case r'fullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

