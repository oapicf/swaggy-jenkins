//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/unlabeled_load_statistics.dart';
import 'package:openapi/model/free_style_project.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/all_view.dart';
import 'package:openapi/model/hudsonassigned_labels.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson.g.dart';

abstract class Hudson implements Built<Hudson, HudsonBuilder> {

    @nullable
    @BuiltValueField(wireName: r'_class')
    String get class_;

    @nullable
    @BuiltValueField(wireName: r'assignedLabels')
    BuiltList<HudsonassignedLabels> get assignedLabels;

    @nullable
    @BuiltValueField(wireName: r'mode')
    String get mode;

    @nullable
    @BuiltValueField(wireName: r'nodeDescription')
    String get nodeDescription;

    @nullable
    @BuiltValueField(wireName: r'nodeName')
    String get nodeName;

    @nullable
    @BuiltValueField(wireName: r'numExecutors')
    int get numExecutors;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'jobs')
    BuiltList<FreeStyleProject> get jobs;

    @nullable
    @BuiltValueField(wireName: r'primaryView')
    AllView get primaryView;

    @nullable
    @BuiltValueField(wireName: r'quietingDown')
    bool get quietingDown;

    @nullable
    @BuiltValueField(wireName: r'slaveAgentPort')
    int get slaveAgentPort;

    @nullable
    @BuiltValueField(wireName: r'unlabeledLoad')
    UnlabeledLoadStatistics get unlabeledLoad;

    @nullable
    @BuiltValueField(wireName: r'useCrumbs')
    bool get useCrumbs;

    @nullable
    @BuiltValueField(wireName: r'useSecurity')
    bool get useSecurity;

    @nullable
    @BuiltValueField(wireName: r'views')
    BuiltList<AllView> get views;

    Hudson._();

    static void _initializeBuilder(HudsonBuilder b) => b;

    factory Hudson([void updates(HudsonBuilder b)]) = _$Hudson;

    @BuiltValueSerializer(custom: true)
    static Serializer<Hudson> get serializer => _$HudsonSerializer();
}

class _$HudsonSerializer implements StructuredSerializer<Hudson> {

    @override
    final Iterable<Type> types = const [Hudson, _$Hudson];
    @override
    final String wireName = r'Hudson';

    @override
    Iterable<Object> serialize(Serializers serializers, Hudson object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.class_ != null) {
            result
                ..add(r'_class')
                ..add(serializers.serialize(object.class_,
                    specifiedType: const FullType(String)));
        }
        if (object.assignedLabels != null) {
            result
                ..add(r'assignedLabels')
                ..add(serializers.serialize(object.assignedLabels,
                    specifiedType: const FullType(BuiltList, [FullType(HudsonassignedLabels)])));
        }
        if (object.mode != null) {
            result
                ..add(r'mode')
                ..add(serializers.serialize(object.mode,
                    specifiedType: const FullType(String)));
        }
        if (object.nodeDescription != null) {
            result
                ..add(r'nodeDescription')
                ..add(serializers.serialize(object.nodeDescription,
                    specifiedType: const FullType(String)));
        }
        if (object.nodeName != null) {
            result
                ..add(r'nodeName')
                ..add(serializers.serialize(object.nodeName,
                    specifiedType: const FullType(String)));
        }
        if (object.numExecutors != null) {
            result
                ..add(r'numExecutors')
                ..add(serializers.serialize(object.numExecutors,
                    specifiedType: const FullType(int)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.jobs != null) {
            result
                ..add(r'jobs')
                ..add(serializers.serialize(object.jobs,
                    specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)])));
        }
        if (object.primaryView != null) {
            result
                ..add(r'primaryView')
                ..add(serializers.serialize(object.primaryView,
                    specifiedType: const FullType(AllView)));
        }
        if (object.quietingDown != null) {
            result
                ..add(r'quietingDown')
                ..add(serializers.serialize(object.quietingDown,
                    specifiedType: const FullType(bool)));
        }
        if (object.slaveAgentPort != null) {
            result
                ..add(r'slaveAgentPort')
                ..add(serializers.serialize(object.slaveAgentPort,
                    specifiedType: const FullType(int)));
        }
        if (object.unlabeledLoad != null) {
            result
                ..add(r'unlabeledLoad')
                ..add(serializers.serialize(object.unlabeledLoad,
                    specifiedType: const FullType(UnlabeledLoadStatistics)));
        }
        if (object.useCrumbs != null) {
            result
                ..add(r'useCrumbs')
                ..add(serializers.serialize(object.useCrumbs,
                    specifiedType: const FullType(bool)));
        }
        if (object.useSecurity != null) {
            result
                ..add(r'useSecurity')
                ..add(serializers.serialize(object.useSecurity,
                    specifiedType: const FullType(bool)));
        }
        if (object.views != null) {
            result
                ..add(r'views')
                ..add(serializers.serialize(object.views,
                    specifiedType: const FullType(BuiltList, [FullType(AllView)])));
        }
        return result;
    }

    @override
    Hudson deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonBuilder();

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
                case r'assignedLabels':
                    result.assignedLabels.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(HudsonassignedLabels)])) as BuiltList<HudsonassignedLabels>);
                    break;
                case r'mode':
                    result.mode = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'nodeDescription':
                    result.nodeDescription = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'nodeName':
                    result.nodeName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'numExecutors':
                    result.numExecutors = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'jobs':
                    result.jobs.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)])) as BuiltList<FreeStyleProject>);
                    break;
                case r'primaryView':
                    result.primaryView.replace(serializers.deserialize(value,
                        specifiedType: const FullType(AllView)) as AllView);
                    break;
                case r'quietingDown':
                    result.quietingDown = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'slaveAgentPort':
                    result.slaveAgentPort = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'unlabeledLoad':
                    result.unlabeledLoad.replace(serializers.deserialize(value,
                        specifiedType: const FullType(UnlabeledLoadStatistics)) as UnlabeledLoadStatistics);
                    break;
                case r'useCrumbs':
                    result.useCrumbs = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'useSecurity':
                    result.useSecurity = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'views':
                    result.views.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(AllView)])) as BuiltList<AllView>);
                    break;
            }
        }
        return result.build();
    }
}

