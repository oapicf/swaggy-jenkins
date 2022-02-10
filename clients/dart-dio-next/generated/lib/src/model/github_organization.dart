//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/github_organizationlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_organization.g.dart';

/// GithubOrganization
///
/// Properties:
/// * [class_] 
/// * [links] 
/// * [jenkinsOrganizationPipeline] 
/// * [name] 
abstract class GithubOrganization implements Built<GithubOrganization, GithubOrganizationBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'_links')
    GithubOrganizationlinks? get links;

    @BuiltValueField(wireName: r'jenkinsOrganizationPipeline')
    bool? get jenkinsOrganizationPipeline;

    @BuiltValueField(wireName: r'name')
    String? get name;

    GithubOrganization._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubOrganizationBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, GithubOrganization object,
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
    GithubOrganization deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubOrganizationBuilder();

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
                        specifiedType: const FullType(GithubOrganizationlinks)) as GithubOrganizationlinks;
                    result.links.replace(valueDes);
                    break;
                case r'jenkinsOrganizationPipeline':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.jenkinsOrganizationPipeline = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

