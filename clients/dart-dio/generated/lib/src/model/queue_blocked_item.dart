//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cause_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/free_style_project.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_blocked_item.g.dart';

/// QueueBlockedItem
///
/// Properties:
/// * [class_] 
/// * [actions] 
/// * [blocked] 
/// * [buildable] 
/// * [id] 
/// * [inQueueSince] 
/// * [params] 
/// * [stuck] 
/// * [task] 
/// * [url] 
/// * [why] 
/// * [buildableStartMilliseconds] 
@BuiltValue()
abstract class QueueBlockedItem implements Built<QueueBlockedItem, QueueBlockedItemBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'actions')
  BuiltList<CauseAction>? get actions;

  @BuiltValueField(wireName: r'blocked')
  bool? get blocked;

  @BuiltValueField(wireName: r'buildable')
  bool? get buildable;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'inQueueSince')
  int? get inQueueSince;

  @BuiltValueField(wireName: r'params')
  String? get params;

  @BuiltValueField(wireName: r'stuck')
  bool? get stuck;

  @BuiltValueField(wireName: r'task')
  FreeStyleProject? get task;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'why')
  String? get why;

  @BuiltValueField(wireName: r'buildableStartMilliseconds')
  int? get buildableStartMilliseconds;

  QueueBlockedItem._();

  factory QueueBlockedItem([void updates(QueueBlockedItemBuilder b)]) = _$QueueBlockedItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueBlockedItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueBlockedItem> get serializer => _$QueueBlockedItemSerializer();
}

class _$QueueBlockedItemSerializer implements PrimitiveSerializer<QueueBlockedItem> {
  @override
  final Iterable<Type> types = const [QueueBlockedItem, _$QueueBlockedItem];

  @override
  final String wireName = r'QueueBlockedItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueBlockedItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
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
    if (object.blocked != null) {
      yield r'blocked';
      yield serializers.serialize(
        object.blocked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.buildable != null) {
      yield r'buildable';
      yield serializers.serialize(
        object.buildable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.inQueueSince != null) {
      yield r'inQueueSince';
      yield serializers.serialize(
        object.inQueueSince,
        specifiedType: const FullType(int),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(String),
      );
    }
    if (object.stuck != null) {
      yield r'stuck';
      yield serializers.serialize(
        object.stuck,
        specifiedType: const FullType(bool),
      );
    }
    if (object.task != null) {
      yield r'task';
      yield serializers.serialize(
        object.task,
        specifiedType: const FullType(FreeStyleProject),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.why != null) {
      yield r'why';
      yield serializers.serialize(
        object.why,
        specifiedType: const FullType(String),
      );
    }
    if (object.buildableStartMilliseconds != null) {
      yield r'buildableStartMilliseconds';
      yield serializers.serialize(
        object.buildableStartMilliseconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueBlockedItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueBlockedItemBuilder result,
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
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CauseAction)]),
          ) as BuiltList<CauseAction>;
          result.actions.replace(valueDes);
          break;
        case r'blocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.blocked = valueDes;
          break;
        case r'buildable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.buildable = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'inQueueSince':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inQueueSince = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.params = valueDes;
          break;
        case r'stuck':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stuck = valueDes;
          break;
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FreeStyleProject),
          ) as FreeStyleProject;
          result.task.replace(valueDes);
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'why':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.why = valueDes;
          break;
        case r'buildableStartMilliseconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.buildableStartMilliseconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueBlockedItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueBlockedItemBuilder();
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

