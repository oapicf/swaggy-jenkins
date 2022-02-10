//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/free_style_build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/free_style_projecthealth_report.dart';
import 'package:openapi/model/null_scm.dart';
import 'package:openapi/model/free_style_projectactions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_project.g.dart';

abstract class FreeStyleProject implements Built<FreeStyleProject, FreeStyleProjectBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    @nullable
    @BuiltValueField(wireName: r'actions')
    BuiltList<FreeStyleProjectactions> get actions;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'displayName')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'displayNameOrNull')
    String get displayNameOrNull;

    @nullable
    @BuiltValueField(wireName: r'fullDisplayName')
    String get fullDisplayName;

    @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;

    @nullable
    @BuiltValueField(wireName: r'buildable')
    bool get buildable;

    @nullable
    @BuiltValueField(wireName: r'builds')
    BuiltList<FreeStyleBuild> get builds;

    @nullable
    @BuiltValueField(wireName: r'firstBuild')
    FreeStyleBuild get firstBuild;

    @nullable
    @BuiltValueField(wireName: r'healthReport')
    BuiltList<FreeStyleProjecthealthReport> get healthReport;

    @nullable
    @BuiltValueField(wireName: r'inQueue')
    bool get inQueue;

    @nullable
    @BuiltValueField(wireName: r'keepDependencies')
    bool get keepDependencies;

    @nullable
    @BuiltValueField(wireName: r'lastBuild')
    FreeStyleBuild get lastBuild;

    @nullable
    @BuiltValueField(wireName: r'lastCompletedBuild')
    FreeStyleBuild get lastCompletedBuild;

    @nullable
    @BuiltValueField(wireName: r'lastFailedBuild')
    String get lastFailedBuild;

    @nullable
    @BuiltValueField(wireName: r'lastStableBuild')
    FreeStyleBuild get lastStableBuild;

    @nullable
    @BuiltValueField(wireName: r'lastSuccessfulBuild')
    FreeStyleBuild get lastSuccessfulBuild;

    @nullable
    @BuiltValueField(wireName: r'lastUnstableBuild')
    String get lastUnstableBuild;

    @nullable
    @BuiltValueField(wireName: r'lastUnsuccessfulBuild')
    String get lastUnsuccessfulBuild;

    @nullable
    @BuiltValueField(wireName: r'nextBuildNumber')
    int get nextBuildNumber;

    @nullable
    @BuiltValueField(wireName: r'queueItem')
    String get queueItem;

    @nullable
    @BuiltValueField(wireName: r'concurrentBuild')
    bool get concurrentBuild;

    @nullable
    @BuiltValueField(wireName: r'scm')
    NullSCM get scm;

    FreeStyleProject._();

    static void _initializeBuilder(FreeStyleProjectBuilder b) => b;

    factory FreeStyleProject([void updates(FreeStyleProjectBuilder b)]) = _$FreeStyleProject;

    @BuiltValueSerializer(custom: true)
    static Serializer<FreeStyleProject> get serializer => _$FreeStyleProjectSerializer();
}

class _$FreeStyleProjectSerializer implements StructuredSerializer<FreeStyleProject> {

    @override
    final Iterable<Type> types = const [FreeStyleProject, _$FreeStyleProject];
    @override
    final String wireName = r'FreeStyleProject';

    @override
    Iterable<Object> serialize(Serializers serializers, FreeStyleProject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        if (object.color != null) {
            result
                ..add(r'color')
                ..add(serializers.serialize(object.color,
                    specifiedType: const FullType(String)));
        }
        if (object.actions != null) {
            result
                ..add(r'actions')
                ..add(serializers.serialize(object.actions,
                    specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjectactions)])));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        if (object.displayNameOrNull != null) {
            result
                ..add(r'displayNameOrNull')
                ..add(serializers.serialize(object.displayNameOrNull,
                    specifiedType: const FullType(String)));
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
        if (object.buildable != null) {
            result
                ..add(r'buildable')
                ..add(serializers.serialize(object.buildable,
                    specifiedType: const FullType(bool)));
        }
        if (object.builds != null) {
            result
                ..add(r'builds')
                ..add(serializers.serialize(object.builds,
                    specifiedType: const FullType(BuiltList, [FullType(FreeStyleBuild)])));
        }
        if (object.firstBuild != null) {
            result
                ..add(r'firstBuild')
                ..add(serializers.serialize(object.firstBuild,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        if (object.healthReport != null) {
            result
                ..add(r'healthReport')
                ..add(serializers.serialize(object.healthReport,
                    specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjecthealthReport)])));
        }
        if (object.inQueue != null) {
            result
                ..add(r'inQueue')
                ..add(serializers.serialize(object.inQueue,
                    specifiedType: const FullType(bool)));
        }
        if (object.keepDependencies != null) {
            result
                ..add(r'keepDependencies')
                ..add(serializers.serialize(object.keepDependencies,
                    specifiedType: const FullType(bool)));
        }
        if (object.lastBuild != null) {
            result
                ..add(r'lastBuild')
                ..add(serializers.serialize(object.lastBuild,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        if (object.lastCompletedBuild != null) {
            result
                ..add(r'lastCompletedBuild')
                ..add(serializers.serialize(object.lastCompletedBuild,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        if (object.lastFailedBuild != null) {
            result
                ..add(r'lastFailedBuild')
                ..add(serializers.serialize(object.lastFailedBuild,
                    specifiedType: const FullType(String)));
        }
        if (object.lastStableBuild != null) {
            result
                ..add(r'lastStableBuild')
                ..add(serializers.serialize(object.lastStableBuild,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        if (object.lastSuccessfulBuild != null) {
            result
                ..add(r'lastSuccessfulBuild')
                ..add(serializers.serialize(object.lastSuccessfulBuild,
                    specifiedType: const FullType(FreeStyleBuild)));
        }
        if (object.lastUnstableBuild != null) {
            result
                ..add(r'lastUnstableBuild')
                ..add(serializers.serialize(object.lastUnstableBuild,
                    specifiedType: const FullType(String)));
        }
        if (object.lastUnsuccessfulBuild != null) {
            result
                ..add(r'lastUnsuccessfulBuild')
                ..add(serializers.serialize(object.lastUnsuccessfulBuild,
                    specifiedType: const FullType(String)));
        }
        if (object.nextBuildNumber != null) {
            result
                ..add(r'nextBuildNumber')
                ..add(serializers.serialize(object.nextBuildNumber,
                    specifiedType: const FullType(int)));
        }
        if (object.queueItem != null) {
            result
                ..add(r'queueItem')
                ..add(serializers.serialize(object.queueItem,
                    specifiedType: const FullType(String)));
        }
        if (object.concurrentBuild != null) {
            result
                ..add(r'concurrentBuild')
                ..add(serializers.serialize(object.concurrentBuild,
                    specifiedType: const FullType(bool)));
        }
        if (object.scm != null) {
            result
                ..add(r'scm')
                ..add(serializers.serialize(object.scm,
                    specifiedType: const FullType(NullSCM)));
        }
        return result;
    }

    @override
    FreeStyleProject deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FreeStyleProjectBuilder();

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
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'url':
                    result.url = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'color':
                    result.color = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'actions':
                    result.actions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjectactions)])) as BuiltList<FreeStyleProjectactions>);
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'displayName':
                    result.displayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'displayNameOrNull':
                    result.displayNameOrNull = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fullDisplayName':
                    result.fullDisplayName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fullName':
                    result.fullName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'buildable':
                    result.buildable = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'builds':
                    result.builds.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleBuild)])) as BuiltList<FreeStyleBuild>);
                    break;
                case r'firstBuild':
                    result.firstBuild.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
                case r'healthReport':
                    result.healthReport.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjecthealthReport)])) as BuiltList<FreeStyleProjecthealthReport>);
                    break;
                case r'inQueue':
                    result.inQueue = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'keepDependencies':
                    result.keepDependencies = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'lastBuild':
                    result.lastBuild.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
                case r'lastCompletedBuild':
                    result.lastCompletedBuild.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
                case r'lastFailedBuild':
                    result.lastFailedBuild = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'lastStableBuild':
                    result.lastStableBuild.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
                case r'lastSuccessfulBuild':
                    result.lastSuccessfulBuild.replace(serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild);
                    break;
                case r'lastUnstableBuild':
                    result.lastUnstableBuild = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'lastUnsuccessfulBuild':
                    result.lastUnsuccessfulBuild = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'nextBuildNumber':
                    result.nextBuildNumber = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'queueItem':
                    result.queueItem = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'concurrentBuild':
                    result.concurrentBuild = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'scm':
                    result.scm.replace(serializers.deserialize(value,
                        specifiedType: const FullType(NullSCM)) as NullSCM);
                    break;
            }
        }
        return result.build();
    }
}

