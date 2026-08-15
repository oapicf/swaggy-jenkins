//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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
@BuiltValue()
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

  factory Hudson([void updates(HudsonBuilder b)]) = _$Hudson;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HudsonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Hudson> get serializer => _$HudsonSerializer();
}

class _$HudsonSerializer implements PrimitiveSerializer<Hudson> {
  @override
  final Iterable<Type> types = const [Hudson, _$Hudson];

  @override
  final String wireName = r'Hudson';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Hudson object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.assignedLabels != null) {
      yield r'assignedLabels';
      yield serializers.serialize(
        object.assignedLabels,
        specifiedType: const FullType(BuiltList, [FullType(HudsonassignedLabels)]),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(String),
      );
    }
    if (object.nodeDescription != null) {
      yield r'nodeDescription';
      yield serializers.serialize(
        object.nodeDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.nodeName != null) {
      yield r'nodeName';
      yield serializers.serialize(
        object.nodeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.numExecutors != null) {
      yield r'numExecutors';
      yield serializers.serialize(
        object.numExecutors,
        specifiedType: const FullType(int),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.jobs != null) {
      yield r'jobs';
      yield serializers.serialize(
        object.jobs,
        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)]),
      );
    }
    if (object.primaryView != null) {
      yield r'primaryView';
      yield serializers.serialize(
        object.primaryView,
        specifiedType: const FullType(AllView),
      );
    }
    if (object.quietingDown != null) {
      yield r'quietingDown';
      yield serializers.serialize(
        object.quietingDown,
        specifiedType: const FullType(bool),
      );
    }
    if (object.slaveAgentPort != null) {
      yield r'slaveAgentPort';
      yield serializers.serialize(
        object.slaveAgentPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.unlabeledLoad != null) {
      yield r'unlabeledLoad';
      yield serializers.serialize(
        object.unlabeledLoad,
        specifiedType: const FullType(UnlabeledLoadStatistics),
      );
    }
    if (object.useCrumbs != null) {
      yield r'useCrumbs';
      yield serializers.serialize(
        object.useCrumbs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.useSecurity != null) {
      yield r'useSecurity';
      yield serializers.serialize(
        object.useSecurity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.views != null) {
      yield r'views';
      yield serializers.serialize(
        object.views,
        specifiedType: const FullType(BuiltList, [FullType(AllView)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Hudson object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HudsonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        case r'assignedLabels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HudsonassignedLabels)]),
          ) as BuiltList<HudsonassignedLabels>;
          result.assignedLabels.replace(valueDes);
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mode = valueDes;
          break;
        case r'nodeDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeDescription = valueDes;
          break;
        case r'nodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeName = valueDes;
          break;
        case r'numExecutors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numExecutors = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'jobs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FreeStyleProject)]),
          ) as BuiltList<FreeStyleProject>;
          result.jobs.replace(valueDes);
          break;
        case r'primaryView':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AllView),
          ) as AllView;
          result.primaryView.replace(valueDes);
          break;
        case r'quietingDown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.quietingDown = valueDes;
          break;
        case r'slaveAgentPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.slaveAgentPort = valueDes;
          break;
        case r'unlabeledLoad':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnlabeledLoadStatistics),
          ) as UnlabeledLoadStatistics;
          result.unlabeledLoad.replace(valueDes);
          break;
        case r'useCrumbs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useCrumbs = valueDes;
          break;
        case r'useSecurity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useSecurity = valueDes;
          break;
        case r'views':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AllView)]),
          ) as BuiltList<AllView>;
          result.views.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Hudson deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HudsonBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

