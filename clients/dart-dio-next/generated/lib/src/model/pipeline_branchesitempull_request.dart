//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/pipeline_branchesitempull_requestlinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitempull_request.g.dart';

/// PipelineBranchesitempullRequest
///
/// Properties:
/// * [links] 
/// * [author] 
/// * [id] 
/// * [title] 
/// * [url] 
/// * [class_] 
abstract class PipelineBranchesitempullRequest implements Built<PipelineBranchesitempullRequest, PipelineBranchesitempullRequestBuilder> {
    @BuiltValueField(wireName: r'_links')
    PipelineBranchesitempullRequestlinks? get links;

    @BuiltValueField(wireName: r'author')
    String? get author;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    PipelineBranchesitempullRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineBranchesitempullRequestBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, PipelineBranchesitempullRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineBranchesitempullRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineBranchesitempullRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PipelineBranchesitempullRequestlinks)) as PipelineBranchesitempullRequestlinks;
                    result.links.replace(valueDes);
                    break;
                case r'author':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.author = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
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

