//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_content.g.dart';

abstract class GithubContent implements Built<GithubContent, GithubContentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'repo')
    String get repo;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'owner')
    String get owner;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'base64Data')
    String get base64Data;

    GithubContent._();

    static void _initializeBuilder(GithubContentBuilder b) => b;

    factory GithubContent([void updates(GithubContentBuilder b)]) = _$GithubContent;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubContent> get serializer => _$GithubContentSerializer();
}

class _$GithubContentSerializer implements StructuredSerializer<GithubContent> {

    @override
    final Iterable<Type> types = const [GithubContent, _$GithubContent];
    @override
    final String wireName = r'GithubContent';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubContent object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.sha != null) {
            result
                ..add(r'sha')
                ..add(serializers.serialize(object.sha,
                    specifiedType: const FullType(String)));
        }
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.repo != null) {
            result
                ..add(r'repo')
                ..add(serializers.serialize(object.repo,
                    specifiedType: const FullType(String)));
        }
        if (object.size != null) {
            result
                ..add(r'size')
                ..add(serializers.serialize(object.size,
                    specifiedType: const FullType(int)));
        }
        if (object.owner != null) {
            result
                ..add(r'owner')
                ..add(serializers.serialize(object.owner,
                    specifiedType: const FullType(String)));
        }
        if (object.path != null) {
            result
                ..add(r'path')
                ..add(serializers.serialize(object.path,
                    specifiedType: const FullType(String)));
        }
        if (object.base64Data != null) {
            result
                ..add(r'base64Data')
                ..add(serializers.serialize(object.base64Data,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    GithubContent deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubContentBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'sha':
                    result.sha = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'repo':
                    result.repo = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'size':
                    result.size = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'owner':
                    result.owner = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'path':
                    result.path = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'base64Data':
                    result.base64Data = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

