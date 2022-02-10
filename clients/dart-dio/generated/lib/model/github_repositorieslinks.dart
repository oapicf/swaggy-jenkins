//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositorieslinks.g.dart';

abstract class GithubRepositorieslinks implements Built<GithubRepositorieslinks, GithubRepositorieslinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    GithubRepositorieslinks._();

    static void _initializeBuilder(GithubRepositorieslinksBuilder b) => b;

    factory GithubRepositorieslinks([void updates(GithubRepositorieslinksBuilder b)]) = _$GithubRepositorieslinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<GithubRepositorieslinks> get serializer => _$GithubRepositorieslinksSerializer();
}

class _$GithubRepositorieslinksSerializer implements StructuredSerializer<GithubRepositorieslinks> {

    @override
    final Iterable<Type> types = const [GithubRepositorieslinks, _$GithubRepositorieslinks];
    @override
    final String wireName = r'GithubRepositorieslinks';

    @override
    Iterable<Object> serialize(Serializers serializers, GithubRepositorieslinks object,
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
    GithubRepositorieslinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GithubRepositorieslinksBuilder();

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

