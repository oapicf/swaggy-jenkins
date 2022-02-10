//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitempull_requestlinks.g.dart';

abstract class PipelineBranchesitempullRequestlinks implements Built<PipelineBranchesitempullRequestlinks, PipelineBranchesitempullRequestlinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    String get self;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineBranchesitempullRequestlinks._();

    static void _initializeBuilder(PipelineBranchesitempullRequestlinksBuilder b) => b;

    factory PipelineBranchesitempullRequestlinks([void updates(PipelineBranchesitempullRequestlinksBuilder b)]) = _$PipelineBranchesitempullRequestlinks;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineBranchesitempullRequestlinks> get serializer => _$PipelineBranchesitempullRequestlinksSerializer();
}

class _$PipelineBranchesitempullRequestlinksSerializer implements StructuredSerializer<PipelineBranchesitempullRequestlinks> {

    @override
    final Iterable<Type> types = const [PipelineBranchesitempullRequestlinks, _$PipelineBranchesitempullRequestlinks];
    @override
    final String wireName = r'PipelineBranchesitempullRequestlinks';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineBranchesitempullRequestlinks object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.self != null) {
            result
                ..add(r'self')
                ..add(serializers.serialize(object.self,
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
    PipelineBranchesitempullRequestlinks deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineBranchesitempullRequestlinksBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'self':
                    result.self = serializers.deserialize(value,
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

