//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/pipeline_branchesitemlatest_run.dart';
import 'package:openapi/src/model/pipeline_branchesitempull_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pipeline_branchesitem.g.dart';

/// PipelineBranchesitem
///
/// Properties:
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [name] 
/// * [weatherScore] 
/// * [latestRun] 
/// * [organization] 
/// * [pullRequest] 
/// * [totalNumberOfPullRequests] 
/// * [class_] 
abstract class PipelineBranchesitem implements Built<PipelineBranchesitem, PipelineBranchesitemBuilder> {
    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int? get estimatedDurationInMillis;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'weatherScore')
    int? get weatherScore;

    @BuiltValueField(wireName: r'latestRun')
    PipelineBranchesitemlatestRun? get latestRun;

    @BuiltValueField(wireName: r'organization')
    String? get organization;

    @BuiltValueField(wireName: r'pullRequest')
    PipelineBranchesitempullRequest? get pullRequest;

    @BuiltValueField(wireName: r'totalNumberOfPullRequests')
    int? get totalNumberOfPullRequests;

    @BuiltValueField(wireName: r'_class')
    String? get class_;

    PipelineBranchesitem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PipelineBranchesitemBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, PipelineBranchesitem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    PipelineBranchesitem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PipelineBranchesitemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'estimatedDurationInMillis':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.estimatedDurationInMillis = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'weatherScore':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.weatherScore = valueDes;
                    break;
                case r'latestRun':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PipelineBranchesitemlatestRun)) as PipelineBranchesitemlatestRun;
                    result.latestRun.replace(valueDes);
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.organization = valueDes;
                    break;
                case r'pullRequest':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PipelineBranchesitempullRequest)) as PipelineBranchesitempullRequest;
                    result.pullRequest.replace(valueDes);
                    break;
                case r'totalNumberOfPullRequests':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.totalNumberOfPullRequests = valueDes;
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

