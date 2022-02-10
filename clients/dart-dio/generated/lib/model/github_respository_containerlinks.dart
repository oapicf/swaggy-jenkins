//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_respository_containerlinks.g.dart';

abstract class GithubRespositoryContainerlinks implements Built<GithubRespositoryContainerlinks, GithubRespositoryContainerlinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    GithubRespositoryContainerlinks._();

    static void _initializeBuilder(GithubRespositoryContainerlinksBuilder b) => b;

    factory GithubRespositoryContainerlinks([void updates(GithubRespositoryContainerlinksBuilder b)]) = _$GithubRespositoryContainerlinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRespositoryContainerlinks> get serializer => _$GithubRespositoryContainerlinksSerializer();
}

class _$GithubRespositoryContainerlinksSerializer implements StructuredSerializer<GithubRespositoryContainerlinks> {

    @override
    final Iterable<Type> types = const [GithubRespositoryContainerlinks, _$GithubRespositoryContainerlinks];
    @override
    final String wireName = r'GithubRespositoryContainerlinks';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubRespositoryContainerlinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
                    specifiedType: const FullType(Link)));
        }
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubRespositoryContainerlinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRespositoryContainerlinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'self':
                    result.self.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

