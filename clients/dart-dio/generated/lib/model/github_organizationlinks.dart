//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_organizationlinks.g.dart';

abstract class GithubOrganizationlinks implements Built<GithubOrganizationlinks, GithubOrganizationlinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'repositories')
    Link get repositories;

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    GithubOrganizationlinks._();

    static void _initializeBuilder(GithubOrganizationlinksBuilder b) => b;

    factory GithubOrganizationlinks([void updates(GithubOrganizationlinksBuilder b)]) = _$GithubOrganizationlinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubOrganizationlinks> get serializer => _$GithubOrganizationlinksSerializer();
}

class _$GithubOrganizationlinksSerializer implements StructuredSerializer<GithubOrganizationlinks> {

    @override
    final Iterable<Type> types = const [GithubOrganizationlinks, _$GithubOrganizationlinks];
    @override
    final String wireName = r'GithubOrganizationlinks';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubOrganizationlinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.repositories != null) {
            result
                ..add(r'repositories')
                ..add(serializers.serialize(object.repositories,
                    specifiedType: const FullType(Link)));
        }
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
    GithubOrganizationlinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubOrganizationlinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'repositories':
                    result.repositories.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Link)) as Link);
                    break;
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

