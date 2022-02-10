//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/null_scm.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/free_style_build.dart';
import 'package:openapi/src/model/free_style_projecthealth_report.dart';
import 'package:openapi/src/model/free_style_projectactions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_project.g.dart';

/// FreeStyleProject
///
/// Properties:
/// * [class_] 
/// * [name] 
/// * [url] 
/// * [color] 
/// * [actions] 
/// * [description] 
/// * [displayName] 
/// * [displayNameOrNull] 
/// * [fullDisplayName] 
/// * [fullName] 
/// * [buildable] 
/// * [builds] 
/// * [firstBuild] 
/// * [healthReport] 
/// * [inQueue] 
/// * [keepDependencies] 
/// * [lastBuild] 
/// * [lastCompletedBuild] 
/// * [lastFailedBuild] 
/// * [lastStableBuild] 
/// * [lastSuccessfulBuild] 
/// * [lastUnstableBuild] 
/// * [lastUnsuccessfulBuild] 
/// * [nextBuildNumber] 
/// * [queueItem] 
/// * [concurrentBuild] 
/// * [scm] 
abstract class FreeStyleProject implements Built<FreeStyleProject, FreeStyleProjectBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'color')
    String? get color;

    @BuiltValueField(wireName: r'actions')
    BuiltList<FreeStyleProjectactions>? get actions;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    @BuiltValueField(wireName: r'displayNameOrNull')
    String? get displayNameOrNull;

    @BuiltValueField(wireName: r'fullDisplayName')
    String? get fullDisplayName;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    @BuiltValueField(wireName: r'buildable')
    bool? get buildable;

    @BuiltValueField(wireName: r'builds')
    BuiltList<FreeStyleBuild>? get builds;

    @BuiltValueField(wireName: r'firstBuild')
    FreeStyleBuild? get firstBuild;

    @BuiltValueField(wireName: r'healthReport')
    BuiltList<FreeStyleProjecthealthReport>? get healthReport;

    @BuiltValueField(wireName: r'inQueue')
    bool? get inQueue;

    @BuiltValueField(wireName: r'keepDependencies')
    bool? get keepDependencies;

    @BuiltValueField(wireName: r'lastBuild')
    FreeStyleBuild? get lastBuild;

    @BuiltValueField(wireName: r'lastCompletedBuild')
    FreeStyleBuild? get lastCompletedBuild;

    @BuiltValueField(wireName: r'lastFailedBuild')
    String? get lastFailedBuild;

    @BuiltValueField(wireName: r'lastStableBuild')
    FreeStyleBuild? get lastStableBuild;

    @BuiltValueField(wireName: r'lastSuccessfulBuild')
    FreeStyleBuild? get lastSuccessfulBuild;

    @BuiltValueField(wireName: r'lastUnstableBuild')
    String? get lastUnstableBuild;

    @BuiltValueField(wireName: r'lastUnsuccessfulBuild')
    String? get lastUnsuccessfulBuild;

    @BuiltValueField(wireName: r'nextBuildNumber')
    int? get nextBuildNumber;

    @BuiltValueField(wireName: r'queueItem')
    String? get queueItem;

    @BuiltValueField(wireName: r'concurrentBuild')
    bool? get concurrentBuild;

    @BuiltValueField(wireName: r'scm')
    NullSCM? get scm;

    FreeStyleProject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FreeStyleProjectBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, FreeStyleProject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    FreeStyleProject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FreeStyleProjectBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
                case r'color':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.color = valueDes;
                    break;
                case r'actions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjectactions)])) as BuiltList<FreeStyleProjectactions>;
                    result.actions.replace(valueDes);
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'displayNameOrNull':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayNameOrNull = valueDes;
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
                case r'buildable':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.buildable = valueDes;
                    break;
                case r'builds':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleBuild)])) as BuiltList<FreeStyleBuild>;
                    result.builds.replace(valueDes);
                    break;
                case r'firstBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.firstBuild.replace(valueDes);
                    break;
                case r'healthReport':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjecthealthReport)])) as BuiltList<FreeStyleProjecthealthReport>;
                    result.healthReport.replace(valueDes);
                    break;
                case r'inQueue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.inQueue = valueDes;
                    break;
                case r'keepDependencies':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.keepDependencies = valueDes;
                    break;
                case r'lastBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.lastBuild.replace(valueDes);
                    break;
                case r'lastCompletedBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.lastCompletedBuild.replace(valueDes);
                    break;
                case r'lastFailedBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.lastFailedBuild = valueDes;
                    break;
                case r'lastStableBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.lastStableBuild.replace(valueDes);
                    break;
                case r'lastSuccessfulBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FreeStyleBuild)) as FreeStyleBuild;
                    result.lastSuccessfulBuild.replace(valueDes);
                    break;
                case r'lastUnstableBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.lastUnstableBuild = valueDes;
                    break;
                case r'lastUnsuccessfulBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.lastUnsuccessfulBuild = valueDes;
                    break;
                case r'nextBuildNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.nextBuildNumber = valueDes;
                    break;
                case r'queueItem':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.queueItem = valueDes;
                    break;
                case r'concurrentBuild':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.concurrentBuild = valueDes;
                    break;
                case r'scm':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(NullSCM)) as NullSCM;
                    result.scm.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

