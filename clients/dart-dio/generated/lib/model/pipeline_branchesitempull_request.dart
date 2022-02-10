//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/pipeline_branchesitempull_requestlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitempull_request.g.dart';

abstract class PipelineBranchesitempullRequest implements Built<PipelineBranchesitempullRequest, PipelineBranchesitempullRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_links')
    PipelineBranchesitempullRequestlinks get links;

    @nullable
    @BuiltValueField(wireName: r'author')
    String get author;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineBranchesitempullRequest._();

    static void _initializeBuilder(PipelineBranchesitempullRequestBuilder b) => b;

    factory PipelineBranchesitempullRequest([void updates(PipelineBranchesitempullRequestBuilder b)]) = _$PipelineBranchesitempullRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineBranchesitempullRequest> get serializer => _$PipelineBranchesitempullRequestSerializer();
}

class _$PipelineBranchesitempullRequestSerializer implements StructuredSerializer<PipelineBranchesitempullRequest> {

    @override
    final Iterable<Type> types = const [PipelineBranchesitempullRequest, _$PipelineBranchesitempullRequest];
    @override
    final String wireName = r'PipelineBranchesitempullRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineBranchesitempullRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(PipelineBranchesitempullRequestlinks)));
        }
        if (object.author != null) {
            result
                ..add(r'author')
                ..add(serializers.serialize(object.author,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
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
    PipelineBranchesitempullRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineBranchesitempullRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_links':
                    result.links.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelineBranchesitempullRequestlinks)) as PipelineBranchesitempullRequestlinks);
                    break;
                case r'author':
                    result.author = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'url':
                    result.url = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
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

