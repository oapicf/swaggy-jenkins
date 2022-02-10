//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/branch_impllinks.dart';
import 'package:openapi/src/model/string_parameter_definition.dart';
import 'package:openapi/src/model/branch_implpermissions.dart';
import 'package:openapi/src/model/pipeline_run_impl.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_impl.g.dart';

/// BranchImpl
///
/// Properties:
/// * [class_] 
/// * [displayName] 
/// * [estimatedDurationInMillis] 
/// * [fullDisplayName] 
/// * [fullName] 
/// * [name] 
/// * [organization] 
/// * [parameters] 
/// * [permissions] 
/// * [weatherScore] 
/// * [pullRequest] 
/// * [links] 
/// * [latestRun] 
abstract class BranchImpl implements Built<BranchImpl, BranchImplBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int? get estimatedDurationInMillis;

    @BuiltValueField(wireName: r'fullDisplayName')
    String? get fullDisplayName;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'organization')
    String? get organization;

    @BuiltValueField(wireName: r'parameters')
    BuiltList<StringParameterDefinition>? get parameters;

    @BuiltValueField(wireName: r'permissions')
    BranchImplpermissions? get permissions;

    @BuiltValueField(wireName: r'weatherScore')
    int? get weatherScore;

    @BuiltValueField(wireName: r'pullRequest')
    String? get pullRequest;

    @BuiltValueField(wireName: r'_links')
    BranchImpllinks? get links;

    @BuiltValueField(wireName: r'latestRun')
    PipelineRunImpl? get latestRun;

    BranchImpl._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BranchImplBuilder b) => b;

    factory BranchImpl([void updates(BranchImplBuilder b)]) = _$BranchImpl;

    @BuiltValueSerializer(custom: true)
    static Serializer<BranchImpl> get serializer => _$BranchImplSerializer();
}

class _$BranchImplSerializer implements StructuredSerializer<BranchImpl> {
    @override
    final Iterable<Type> types = const [BranchImpl, _$BranchImpl];

    @override
    final String wireName = r'BranchImpl';

    @override
    Iterable<Object?> serialize(Serializers serializers, BranchImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
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
        if (object.fullDisplayName != null) {
            result
                ..add(r'fullDisplayName')
                ..add(serializers.serialize(object.fullDisplayName,
                    specifiedType: const FullType(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
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
        if (object.parameters != null) {
            result
                ..add(r'parameters')
                ..add(serializers.serialize(object.parameters,
                    specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)])));
        }
        if (object.permissions != null) {
            result
                ..add(r'permissions')
                ..add(serializers.serialize(object.permissions,
                    specifiedType: const FullType(BranchImplpermissions)));
        }
        if (object.weatherScore != null) {
            result
                ..add(r'weatherScore')
                ..add(serializers.serialize(object.weatherScore,
                    specifiedType: const FullType(int)));
        }
        if (object.pullRequest != null) {
            result
                ..add(r'pullRequest')
                ..add(serializers.serialize(object.pullRequest,
                    specifiedType: const FullType(String)));
        }
        if (object.links != null) {
            result
                ..add(r'_links')
                ..add(serializers.serialize(object.links,
                    specifiedType: const FullType(BranchImpllinks)));
        }
        if (object.latestRun != null) {
            result
                ..add(r'latestRun')
                ..add(serializers.serialize(object.latestRun,
                    specifiedType: const FullType(PipelineRunImpl)));
        }
        return result;
    }

    @override
    BranchImpl deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BranchImplBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'_class':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.class_ = valueDes;
                    break;
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
                case r'fullDisplayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullDisplayName = valueDes;
                    break;
                case r'fullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.organization = valueDes;
                    break;
                case r'parameters':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)])) as BuiltList<StringParameterDefinition>;
                    result.parameters.replace(valueDes);
                    break;
                case r'permissions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BranchImplpermissions)) as BranchImplpermissions;
                    result.permissions.replace(valueDes);
                    break;
                case r'weatherScore':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.weatherScore = valueDes;
                    break;
                case r'pullRequest':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.pullRequest = valueDes;
                    break;
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BranchImpllinks)) as BranchImpllinks;
                    result.links.replace(valueDes);
                    break;
                case r'latestRun':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PipelineRunImpl)) as PipelineRunImpl;
                    result.latestRun.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

