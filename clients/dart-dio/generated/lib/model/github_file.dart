//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/github_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_file.g.dart';

abstract class GithubFile implements Built<GithubFile, GithubFileBuilder> {

    @nullable
    @BuiltValueField(wireName: r'content')
    GithubContent get content;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    GithubFile._();

    static void _initializeBuilder(GithubFileBuilder b) => b;

    factory GithubFile([void updates(GithubFileBuilder b)]) = _$GithubFile;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubFile> get serializer => _$GithubFileSerializer();
}

class _$GithubFileSerializer implements StructuredSerializer<GithubFile> {

    @override
    final Iterable<Type> types = const [GithubFile, _$GithubFile];
    @override
    final String wireName = r'GithubFile';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubFile object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(GithubContent)));
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
    GithubFile deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubFileBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'content':
                    result.content.replace(serializers.deserialize(value,
                        specifiedType: const FullType(GithubContent)) as GithubContent);
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

