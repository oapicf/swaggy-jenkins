//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/github_scmlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_scm.g.dart';

abstract class GithubScm implements Built<GithubScm, GithubScmBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'_links')
    GithubScmlinks get links;

    @nullable
    @BuiltValueField(wireName: r'credentialId')
    String get credentialId;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'uri')
    String get uri;

    GithubScm._();

    static void _initializeBuilder(GithubScmBuilder b) => b;

    factory GithubScm([void updates(GithubScmBuilder b)]) = _$GithubScm;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubScm> get serializer => _$GithubScmSerializer();
}

class _$GithubScmSerializer implements StructuredSerializer<GithubScm> {

    @override
    final Iterable<Type> types = const [GithubScm, _$GithubScm];
    @override
    final String wireName = r'GithubScm';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubScm object,
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
                    specifiedType: const FullType(GithubScmlinks)));
        }
        if (object.credentialId != null) {
            result
                ..add(r'credentialId')
                ..add(serializers.serialize(object.credentialId,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.uri != null) {
            result
                ..add(r'uri')
                ..add(serializers.serialize(object.uri,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubScm deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubScmBuilder();

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
                        specifiedType: const FullType(GithubScmlinks)) as GithubScmlinks);
                    break;
                case r'credentialId':
                    result.credentialId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'uri':
                    result.uri = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

