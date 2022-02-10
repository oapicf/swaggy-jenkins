//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_content.g.dart';

/// GithubContent
///
/// Properties:
/// * [name] 
/// * [sha] 
/// * [class_] 
/// * [repo] 
/// * [size] 
/// * [owner] 
/// * [path] 
/// * [base64Data] 
abstract class GithubContent implements Built<GithubContent, GithubContentBuilder> {
    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'sha')
    String? get sha;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'repo')
    String? get repo;

    @BuiltValueField(wireName: r'size')
    int? get size;

    @BuiltValueField(wireName: r'owner')
    String? get owner;

    @BuiltValueField(wireName: r'path')
    String? get path;

    @BuiltValueField(wireName: r'base64Data')
    String? get base64Data;

    GithubContent._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubContentBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, GithubContent object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    GithubContent deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubContentBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'sha':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sha = valueDes;
                    break;
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
                case r'repo':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.repo = valueDes;
                    break;
                case r'size':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.size = valueDes;
                    break;
                case r'owner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.owner = valueDes;
                    break;
                case r'path':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.path = valueDes;
                    break;
                case r'base64Data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.base64Data = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

