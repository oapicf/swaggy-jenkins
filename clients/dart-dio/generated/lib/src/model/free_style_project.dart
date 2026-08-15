//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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
@BuiltValue()
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

  factory FreeStyleProject([void updates(FreeStyleProjectBuilder b)]) = _$FreeStyleProject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreeStyleProjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FreeStyleProject> get serializer => _$FreeStyleProjectSerializer();
}

class _$FreeStyleProjectSerializer implements PrimitiveSerializer<FreeStyleProject> {
  @override
  final Iterable<Type> types = const [FreeStyleProject, _$FreeStyleProject];

  @override
  final String wireName = r'FreeStyleProject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FreeStyleProject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjectactions)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayNameOrNull != null) {
      yield r'displayNameOrNull';
      yield serializers.serialize(
        object.displayNameOrNull,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullDisplayName != null) {
      yield r'fullDisplayName';
      yield serializers.serialize(
        object.fullDisplayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
      );
    }
    if (object.buildable != null) {
      yield r'buildable';
      yield serializers.serialize(
        object.buildable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.builds != null) {
      yield r'builds';
      yield serializers.serialize(
        object.builds,
        specifiedType: const FullType(BuiltList, [FullType(FreeStyleBuild)]),
      );
    }
    if (object.firstBuild != null) {
      yield r'firstBuild';
      yield serializers.serialize(
        object.firstBuild,
        specifiedType: const FullType(FreeStyleBuild),
      );
    }
    if (object.healthReport != null) {
      yield r'healthReport';
      yield serializers.serialize(
        object.healthReport,
        specifiedType: const FullType(BuiltList, [FullType(FreeStyleProjecthealthReport)]),
      );
    }
    if (object.inQueue != null) {
      yield r'inQueue';
      yield serializers.serialize(
        object.inQueue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.keepDependencies != null) {
      yield r'keepDependencies';
      yield serializers.serialize(
        object.keepDependencies,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastBuild != null) {
      yield r'lastBuild';
      yield serializers.serialize(
        object.lastBuild,
        specifiedType: const FullType(FreeStyleBuild),
      );
    }
    if (object.lastCompletedBuild != null) {
      yield r'lastCompletedBuild';
      yield serializers.serialize(
        object.lastCompletedBuild,
        specifiedType: const FullType(FreeStyleBuild),
      );
    }
    if (object.lastFailedBuild != null) {
      yield r'lastFailedBuild';
      yield serializers.serialize(
        object.lastFailedBuild,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastStableBuild != null) {
      yield r'lastStableBuild';
      yield serializers.serialize(
        object.lastStableBuild,
        specifiedType: const FullType(FreeStyleBuild),
      );
    }
    if (object.lastSuccessfulBuild != null) {
      yield r'lastSuccessfulBuild';
      yield serializers.serialize(
        object.lastSuccessfulBuild,
        specifiedType: const FullType(FreeStyleBuild),
      );
    }
    if (object.lastUnstableBuild != null) {
      yield r'lastUnstableBuild';
      yield serializers.serialize(
        object.lastUnstableBuild,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastUnsuccessfulBuild != null) {
      yield r'lastUnsuccessfulBuild';
      yield serializers.serialize(
        object.lastUnsuccessfulBuild,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextBuildNumber != null) {
      yield r'nextBuildNumber';
      yield serializers.serialize(
        object.nextBuildNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.queueItem != null) {
      yield r'queueItem';
      yield serializers.serialize(
        object.queueItem,
        specifiedType: const FullType(String),
      );
    }
    if (object.concurrentBuild != null) {
      yield r'concurrentBuild';
      yield serializers.serialize(
        object.concurrentBuild,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scm != null) {
      yield r'scm';
      yield serializers.serialize(
        object.scm,
        specifiedType: const FullType(NullSCM),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FreeStyleProject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FreeStyleProjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.class_ = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(FreeStyleProjectactions)]),
          ) as BuiltList<FreeStyleProjectactions>?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'displayNameOrNull':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayNameOrNull = valueDes;
          break;
        case r'fullDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullDisplayName = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullName = valueDes;
          break;
        case r'buildable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.buildable = valueDes;
          break;
        case r'builds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(FreeStyleBuild)]),
          ) as BuiltList<FreeStyleBuild>?;
          if (valueDes == null) continue;
          result.builds.replace(valueDes);
          break;
        case r'firstBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FreeStyleBuild),
          ) as FreeStyleBuild?;
          if (valueDes == null) continue;
          result.firstBuild.replace(valueDes);
          break;
        case r'healthReport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(FreeStyleProjecthealthReport)]),
          ) as BuiltList<FreeStyleProjecthealthReport>?;
          if (valueDes == null) continue;
          result.healthReport.replace(valueDes);
          break;
        case r'inQueue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.inQueue = valueDes;
          break;
        case r'keepDependencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.keepDependencies = valueDes;
          break;
        case r'lastBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FreeStyleBuild),
          ) as FreeStyleBuild?;
          if (valueDes == null) continue;
          result.lastBuild.replace(valueDes);
          break;
        case r'lastCompletedBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FreeStyleBuild),
          ) as FreeStyleBuild?;
          if (valueDes == null) continue;
          result.lastCompletedBuild.replace(valueDes);
          break;
        case r'lastFailedBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastFailedBuild = valueDes;
          break;
        case r'lastStableBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FreeStyleBuild),
          ) as FreeStyleBuild?;
          if (valueDes == null) continue;
          result.lastStableBuild.replace(valueDes);
          break;
        case r'lastSuccessfulBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FreeStyleBuild),
          ) as FreeStyleBuild?;
          if (valueDes == null) continue;
          result.lastSuccessfulBuild.replace(valueDes);
          break;
        case r'lastUnstableBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastUnstableBuild = valueDes;
          break;
        case r'lastUnsuccessfulBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastUnsuccessfulBuild = valueDes;
          break;
        case r'nextBuildNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.nextBuildNumber = valueDes;
          break;
        case r'queueItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.queueItem = valueDes;
          break;
        case r'concurrentBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.concurrentBuild = valueDes;
          break;
        case r'scm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NullSCM),
          ) as NullSCM?;
          if (valueDes == null) continue;
          result.scm.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FreeStyleProject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreeStyleProjectBuilder();
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

