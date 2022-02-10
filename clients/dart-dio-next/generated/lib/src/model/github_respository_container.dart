//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
abstract class GithubRespositoryContainer implements Built<GithubRespositoryContainer, GithubRespositoryContainerBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    GithubRespositoryContainerlinks? get links;

    @BuiltValueField(wireName: r'repositories')
    GithubRepositories? get repositories;

    GithubRespositoryContainer._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubRespositoryContainerBuilder b) => b;

    factory GithubRespositoryContainer([void updates(GithubRespositoryContainerBuilder b)]) = _$GithubRespositoryContainer;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRespositoryContainer> get serializer => _$GithubRespositoryContainerSerializer();
}

class _$GithubRespositoryContainerSerializer implements StructuredSerializer<GithubRespositoryContainer> {
    @override
    final Iterable<Type> types = const [GithubRespositoryContainer, _$GithubRespositoryContainer];

    @override
    final String wireName = r'GithubRespositoryContainer';

    @override
    Iterable<Object?> serialize(Serializers serializers, GithubRespositoryContainer object,
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
                    specifiedType: const FullType(GithubRespositoryContainerlinks)));
        }
        if (object.repositories != null) {
            result
                ..add(r'repositories')
                ..add(serializers.serialize(object.repositories,
                    specifiedType: const FullType(GithubRepositories)));
        }
        return result;
    }

    @override
    GithubRespositoryContainer deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRespositoryContainerBuilder();

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
                        specifiedType: const FullType(GithubRespositoryContainerlinks)) as GithubRespositoryContainerlinks;
                    result.links.replace(valueDes);
                    break;
                case r'repositories':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(GithubRepositories)) as GithubRepositories;
                    result.repositories.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

