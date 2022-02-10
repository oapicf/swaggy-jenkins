//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/github_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_file.g.dart';

/// GithubFile
///
/// Properties:
/// * [content] 
/// * [class_] 
abstract class GithubFile implements Built<GithubFile, GithubFileBuilder> {
    @BuiltValueField(wireName: r'content')
    GithubContent? get content;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    GithubFile._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GithubFileBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, GithubFile object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    GithubFile deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubFileBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(GithubContent)) as GithubContent;
                    result.content.replace(valueDes);
                    break;
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

