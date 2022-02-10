//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/pipeline_branchesitempull_request.dart';
import 'package:openapi/model/pipeline_branchesitemlatest_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitem.g.dart';

abstract class PipelineBranchesitem implements Built<PipelineBranchesitem, PipelineBranchesitemBuilder> {

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int get estimatedDurationInMillis;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'weatherScore')
    int get weatherScore;

    @nullable
    @BuiltValueField(wireName: r'latestRun')
    PipelineBranchesitemlatestRun get latestRun;

    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    @nullable
    @BuiltValueField(wireName: r'pullRequest')
    PipelineBranchesitempullRequest get pullRequest;

    @nullable
    @BuiltValueField(wireName: r'totalNumberOfPullRequests')
    int get totalNumberOfPullRequests;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    PipelineBranchesitem._();

    static void _initializeBuilder(PipelineBranchesitemBuilder b) => b;

    factory PipelineBranchesitem([void updates(PipelineBranchesitemBuilder b)]) = _$PipelineBranchesitem;

    @BuiltValueSerializer(custom: true)
    static Serializer<PipelineBranchesitem> get serializer => _$PipelineBranchesitemSerializer();
}

class _$PipelineBranchesitemSerializer implements StructuredSerializer<PipelineBranchesitem> {

    @override
    final Iterable<Type> types = const [PipelineBranchesitem, _$PipelineBranchesitem];
    @override
    final String wireName = r'PipelineBranchesitem';

    @override
    Iterable<Object> serialize(Serializers serializers, PipelineBranchesitem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.estimatedDurationInMillis != null) {
            result
                ..add(r'estimatedDurationInMillis')
                ..add(serializers.serialize(object.estimatedDurationInMillis,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.weatherScore != null) {
            result
                ..add(r'weatherScore')
                ..add(serializers.serialize(object.weatherScore,
                    specifiedType: const FullType(int)));
        }
        if (object.latestRun != null) {
            result
                ..add(r'latestRun')
                ..add(serializers.serialize(object.latestRun,
                    specifiedType: const FullType(PipelineBranchesitemlatestRun)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(String)));
        }
        if (object.pullRequest != null) {
            result
                ..add(r'pullRequest')
                ..add(serializers.serialize(object.pullRequest,
                    specifiedType: const FullType(PipelineBranchesitempullRequest)));
        }
        if (object.totalNumberOfPullRequests != null) {
            result
                ..add(r'totalNumberOfPullRequests')
                ..add(serializers.serialize(object.totalNumberOfPullRequests,
                    specifiedType: const FullType(int)));
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
    PipelineBranchesitem deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineBranchesitemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'estimatedDurationInMillis':
                    result.estimatedDurationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'weatherScore':
                    result.weatherScore = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'latestRun':
                    result.latestRun.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelineBranchesitemlatestRun)) as PipelineBranchesitemlatestRun);
                    break;
                case r'organization':
                    result.organization = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'pullRequest':
                    result.pullRequest.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelineBranchesitempullRequest)) as PipelineBranchesitempullRequest);
                    break;
                case r'totalNumberOfPullRequests':
                    result.totalNumberOfPullRequests = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

