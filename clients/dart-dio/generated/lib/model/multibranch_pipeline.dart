//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multibranch_pipeline.g.dart';

abstract class MultibranchPipeline implements Built<MultibranchPipeline, MultibranchPipelineBuilder> {

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int get estimatedDurationInMillis;

    @nullable
    @BuiltValueField(wireName: r'latestRun')
    String get latestRun;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    @nullable
    @BuiltValueField(wireName: r'weatherScore')
    int get weatherScore;

    @nullable
    @BuiltValueField(wireName: r'branchNames')
    BuiltList<String> get branchNames;

    @nullable
    @BuiltValueField(wireName: r'numberOfFailingBranches')
    int get numberOfFailingBranches;

    @nullable
    @BuiltValueField(wireName: r'numberOfFailingPullRequests')
    int get numberOfFailingPullRequests;

    @nullable
    @BuiltValueField(wireName: r'numberOfSuccessfulBranches')
    int get numberOfSuccessfulBranches;

    @nullable
    @BuiltValueField(wireName: r'numberOfSuccessfulPullRequests')
    int get numberOfSuccessfulPullRequests;

    @nullable
    @BuiltValueField(wireName: r'totalNumberOfBranches')
    int get totalNumberOfBranches;

    @nullable
    @BuiltValueField(wireName: r'totalNumberOfPullRequests')
    int get totalNumberOfPullRequests;

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    MultibranchPipeline._();

    static void _initializeBuilder(MultibranchPipelineBuilder b) => b;

    factory MultibranchPipeline([void updates(MultibranchPipelineBuilder b)]) = _$MultibranchPipeline;

    @BuiltValueSerializer(custom: true)
    static Serializer<MultibranchPipeline> get serializer => _$MultibranchPipelineSerializer();
}

class _$MultibranchPipelineSerializer implements StructuredSerializer<MultibranchPipeline> {

    @override
    final Iterable<Type> types = const [MultibranchPipeline, _$MultibranchPipeline];
    @override
    final String wireName = r'MultibranchPipeline';

    @override
    Iterable<Object> serialize(Serializers serializers, MultibranchPipeline object,
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
        if (object.latestRun != null) {
            result
                ..add(r'latestRun')
                ..add(serializers.serialize(object.latestRun,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(String)));
        }
        if (object.weatherScore != null) {
            result
                ..add(r'weatherScore')
                ..add(serializers.serialize(object.weatherScore,
                    specifiedType: const FullType(int)));
        }
        if (object.branchNames != null) {
            result
                ..add(r'branchNames')
                ..add(serializers.serialize(object.branchNames,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        if (object.numberOfFailingBranches != null) {
            result
                ..add(r'numberOfFailingBranches')
                ..add(serializers.serialize(object.numberOfFailingBranches,
                    specifiedType: const FullType(int)));
        }
        if (object.numberOfFailingPullRequests != null) {
            result
                ..add(r'numberOfFailingPullRequests')
                ..add(serializers.serialize(object.numberOfFailingPullRequests,
                    specifiedType: const FullType(int)));
        }
        if (object.numberOfSuccessfulBranches != null) {
            result
                ..add(r'numberOfSuccessfulBranches')
                ..add(serializers.serialize(object.numberOfSuccessfulBranches,
                    specifiedType: const FullType(int)));
        }
        if (object.numberOfSuccessfulPullRequests != null) {
            result
                ..add(r'numberOfSuccessfulPullRequests')
                ..add(serializers.serialize(object.numberOfSuccessfulPullRequests,
                    specifiedType: const FullType(int)));
        }
        if (object.totalNumberOfBranches != null) {
            result
                ..add(r'totalNumberOfBranches')
                ..add(serializers.serialize(object.totalNumberOfBranches,
                    specifiedType: const FullType(int)));
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
    MultibranchPipeline deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MultibranchPipelineBuilder();

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
                case r'latestRun':
                    result.latestRun = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'organization':
                    result.organization = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'weatherScore':
                    result.weatherScore = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'branchNames':
                    result.branchNames.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
                case r'numberOfFailingBranches':
                    result.numberOfFailingBranches = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'numberOfFailingPullRequests':
                    result.numberOfFailingPullRequests = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'numberOfSuccessfulBranches':
                    result.numberOfSuccessfulBranches = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'numberOfSuccessfulPullRequests':
                    result.numberOfSuccessfulPullRequests = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'totalNumberOfBranches':
                    result.totalNumberOfBranches = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

