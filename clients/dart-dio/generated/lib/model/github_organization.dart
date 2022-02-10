//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/github_organizationlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_organization.g.dart';

abstract class GithubOrganization implements Built<GithubOrganization, GithubOrganizationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    GithubOrganizationlinks get links;

    @nullable
    @BuiltValueField(wireName: r'jenkinsOrganizationPipeline')
    bool get jenkinsOrganizationPipeline;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    GithubOrganization._();

    static void _initializeBuilder(GithubOrganizationBuilder b) => b;

    factory GithubOrganization([void updates(GithubOrganizationBuilder b)]) = _$GithubOrganization;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubOrganization> get serializer => _$GithubOrganizationSerializer();
}

class _$GithubOrganizationSerializer implements StructuredSerializer<GithubOrganization> {

    @override
    final Iterable<Type> types = const [GithubOrganization, _$GithubOrganization];
    @override
    final String wireName = r'GithubOrganization';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubOrganization object,
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
                    specifiedType: const FullType(GithubOrganizationlinks)));
        }
        if (object.jenkinsOrganizationPipeline != null) {
            result
                ..add(r'jenkinsOrganizationPipeline')
                ..add(serializers.serialize(object.jenkinsOrganizationPipeline,
                    specifiedType: const FullType(bool)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubOrganization deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubOrganizationBuilder();

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
                        specifiedType: const FullType(GithubOrganizationlinks)) as GithubOrganizationlinks);
                    break;
                case r'jenkinsOrganizationPipeline':
                    result.jenkinsOrganizationPipeline = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

