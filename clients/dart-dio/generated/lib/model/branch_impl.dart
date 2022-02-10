//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/branch_implpermissions.dart';
import 'package:openapi/model/string_parameter_definition.dart';
import 'package:openapi/model/pipeline_run_impl.dart';
import 'package:openapi/model/branch_impllinks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_impl.g.dart';

abstract class BranchImpl implements Built<BranchImpl, BranchImplBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'estimatedDurationInMillis')
    int get estimatedDurationInMillis;

    @nullable
    @BuiltValueField(wireName: r'fullDisplayName')
    String get fullDisplayName;

    @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'organization')
    String get organization;

    @nullable
    @BuiltValueField(wireName: r'parameters')
    BuiltList<StringParameterDefinition> get parameters;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    BranchImplpermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'weatherScore')
    int get weatherScore;

    @nullable
    @BuiltValueField(wireName: r'pullRequest')
    String get pullRequest;

    @nullable
    @BuiltValueField(wireName: r'_links')
    BranchImpllinks get links;

    @nullable
    @BuiltValueField(wireName: r'latestRun')
    PipelineRunImpl get latestRun;

    BranchImpl._();

    static void _initializeBuilder(BranchImplBuilder b) => b;

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
    Iterable<Object> serialize(Serializers serializers, BranchImpl object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    BranchImpl deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BranchImplBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'_class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'estimatedDurationInMillis':
                    result.estimatedDurationInMillis = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'fullDisplayName':
                    result.fullDisplayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fullName':
                    result.fullName = serializers.deserialize(value,
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
                case r'parameters':
                    result.parameters.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(StringParameterDefinition)])) as BuiltList<StringParameterDefinition>);
                    break;
                case r'permissions':
                    result.permissions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BranchImplpermissions)) as BranchImplpermissions);
                    break;
                case r'weatherScore':
                    result.weatherScore = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'pullRequest':
                    result.pullRequest = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'_links':
                    result.links.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BranchImpllinks)) as BranchImpllinks);
                    break;
                case r'latestRun':
                    result.latestRun.replace(serializers.deserialize(value,
                        specifiedType: const FullType(PipelineRunImpl)) as PipelineRunImpl);
                    break;
            }
        }
        return result.build();
    }
}

