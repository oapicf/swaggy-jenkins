//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/empty_change_log_set.dart';
import 'package:openapi/src/model/cause_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_style_build.g.dart';

/// FreeStyleBuild
///
/// Properties:
/// * [class_] 
/// * [number] 
/// * [url] 
/// * [actions] 
/// * [building] 
/// * [description] 
/// * [displayName] 
/// * [duration] 
/// * [estimatedDuration] 
/// * [executor] 
/// * [fullDisplayName] 
/// * [id] 
/// * [keepLog] 
/// * [queueId] 
/// * [result] 
/// * [timestamp] 
/// * [builtOn] 
/// * [changeSet] 
@BuiltValue()
abstract class FreeStyleBuild implements Built<FreeStyleBuild, FreeStyleBuildBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'number')
  int? get number;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'actions')
  BuiltList<CauseAction>? get actions;

  @BuiltValueField(wireName: r'building')
  bool? get building;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'duration')
  int? get duration;

  @BuiltValueField(wireName: r'estimatedDuration')
  int? get estimatedDuration;

  @BuiltValueField(wireName: r'executor')
  String? get executor;

  @BuiltValueField(wireName: r'fullDisplayName')
  String? get fullDisplayName;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'keepLog')
  bool? get keepLog;

  @BuiltValueField(wireName: r'queueId')
  int? get queueId;

  @BuiltValueField(wireName: r'result')
  String? get result;

  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  @BuiltValueField(wireName: r'builtOn')
  String? get builtOn;

  @BuiltValueField(wireName: r'changeSet')
  EmptyChangeLogSet? get changeSet;

  FreeStyleBuild._();

  factory FreeStyleBuild([void updates(FreeStyleBuildBuilder b)]) = _$FreeStyleBuild;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreeStyleBuildBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FreeStyleBuild> get serializer => _$FreeStyleBuildSerializer();
}

class _$FreeStyleBuildSerializer implements PrimitiveSerializer<FreeStyleBuild> {
  @override
  final Iterable<Type> types = const [FreeStyleBuild, _$FreeStyleBuild];

  @override
  final String wireName = r'FreeStyleBuild';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FreeStyleBuild object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(BuiltList, [FullType(CauseAction)]),
      );
    }
    if (object.building != null) {
      yield r'building';
      yield serializers.serialize(
        object.building,
        specifiedType: const FullType(bool),
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
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.estimatedDuration != null) {
      yield r'estimatedDuration';
      yield serializers.serialize(
        object.estimatedDuration,
        specifiedType: const FullType(int),
      );
    }
    if (object.executor != null) {
      yield r'executor';
      yield serializers.serialize(
        object.executor,
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.keepLog != null) {
      yield r'keepLog';
      yield serializers.serialize(
        object.keepLog,
        specifiedType: const FullType(bool),
      );
    }
    if (object.queueId != null) {
      yield r'queueId';
      yield serializers.serialize(
        object.queueId,
        specifiedType: const FullType(int),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(int),
      );
    }
    if (object.builtOn != null) {
      yield r'builtOn';
      yield serializers.serialize(
        object.builtOn,
        specifiedType: const FullType(String),
      );
    }
    if (object.changeSet != null) {
      yield r'changeSet';
      yield serializers.serialize(
        object.changeSet,
        specifiedType: const FullType(EmptyChangeLogSet),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FreeStyleBuild object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FreeStyleBuildBuilder result,
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
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CauseAction)]),
          ) as BuiltList<CauseAction>;
          result.actions.replace(valueDes);
          break;
        case r'building':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.building = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'estimatedDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.estimatedDuration = valueDes;
          break;
        case r'executor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.executor = valueDes;
          break;
        case r'fullDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullDisplayName = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'keepLog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.keepLog = valueDes;
          break;
        case r'queueId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.queueId = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        case r'builtOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.builtOn = valueDes;
          break;
        case r'changeSet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EmptyChangeLogSet),
          ) as EmptyChangeLogSet;
          result.changeSet.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FreeStyleBuild deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreeStyleBuildBuilder();
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

