//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/unlabeled_load_statistics.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/all_view.dart';
import 'package:openapi/src/model/free_style_project.dart';
import 'package:openapi/src/model/hudsonassigned_labels.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson.g.dart';

/// Hudson
///
/// Properties:
/// * [class_] 
/// * [assignedLabels] 
/// * [mode] 
/// * [nodeDescription] 
/// * [nodeName] 
/// * [numExecutors] 
/// * [description] 
/// * [jobs] 
/// * [primaryView] 
/// * [quietingDown] 
/// * [slaveAgentPort] 
/// * [unlabeledLoad] 
/// * [useCrumbs] 
/// * [useSecurity] 
/// * [views] 
abstract class Hudson implements Built<Hudson, HudsonBuilder> {
    @BuiltValueField(wireName: r'_class')
    String? get class_;

    @BuiltValueField(wireName: r'assignedLabels')
    BuiltList<HudsonassignedLabels>? get assignedLabels;

    @BuiltValueField(wireName: r'mode')
    String? get mode;

    @BuiltValueField(wireName: r'nodeDescription')
    String? get nodeDescription;

    @BuiltValueField(wireName: r'nodeName')
    String? get nodeName;

    @BuiltValueField(wireName: r'numExecutors')
    int? get numExecutors;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'jobs')
    BuiltList<FreeStyleProject>? get jobs;

    @BuiltValueField(wireName: r'primaryView')
    AllView? get primaryView;

    @BuiltValueField(wireName: r'quietingDown')
    bool? get quietingDown;

    @BuiltValueField(wireName: r'slaveAgentPort')
    int? get slaveAgentPort;

    @BuiltValueField(wireName: r'unlabeledLoad')
    UnlabeledLoadStatistics? get unlabeledLoad;

    @BuiltValueField(wireName: r'useCrumbs')
    bool? get useCrumbs;

    @BuiltValueField(wireName: r'useSecurity')
    bool? get useSecurity;

    @BuiltValueField(wireName: r'views')
    BuiltList<AllView>? get views;

    Hudson._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(HudsonBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, Hudson object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    Hudson deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HudsonBuilder();

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
                case r'assignedLabels':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(HudsonassignedLabels)])) as BuiltList<HudsonassignedLabels>;
                    result.assignedLabels.replace(valueDes);
                    break;
                case r'mode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.mode = valueDes;
                    break;
                case r'nodeDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nodeDescription = valueDes;
                    break;
                case r'nodeName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nodeName = valueDes;
                    break;
                case r'numExecutors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.numExecutors = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'jobs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)])) as BuiltList<FreeStyleProject>;
                    result.jobs.replace(valueDes);
                    break;
                case r'primaryView':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AllView)) as AllView;
                    result.primaryView.replace(valueDes);
                    break;
                case r'quietingDown':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.quietingDown = valueDes;
                    break;
                case r'slaveAgentPort':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.slaveAgentPort = valueDes;
                    break;
                case r'unlabeledLoad':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UnlabeledLoadStatistics)) as UnlabeledLoadStatistics;
                    result.unlabeledLoad.replace(valueDes);
                    break;
                case r'useCrumbs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.useCrumbs = valueDes;
                    break;
                case r'useSecurity':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.useSecurity = valueDes;
                    break;
                case r'views':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(AllView)])) as BuiltList<AllView>;
                    result.views.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

