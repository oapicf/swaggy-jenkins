//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_item_impl.g.dart';

/// QueueItemImpl
///
/// Properties:
/// * [class_] 
/// * [expectedBuildNumber] 
/// * [id] 
/// * [pipeline] 
/// * [queuedTime] 
@BuiltValue()
abstract class QueueItemImpl implements Built<QueueItemImpl, QueueItemImplBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'expectedBuildNumber')
  int? get expectedBuildNumber;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'pipeline')
  String? get pipeline;

  @BuiltValueField(wireName: r'queuedTime')
  int? get queuedTime;

  QueueItemImpl._();

  factory QueueItemImpl([void updates(QueueItemImplBuilder b)]) = _$QueueItemImpl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueItemImplBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueItemImpl> get serializer => _$QueueItemImplSerializer();
}

class _$QueueItemImplSerializer implements PrimitiveSerializer<QueueItemImpl> {
  @override
  final Iterable<Type> types = const [QueueItemImpl, _$QueueItemImpl];

  @override
  final String wireName = r'QueueItemImpl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueItemImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.expectedBuildNumber != null) {
      yield r'expectedBuildNumber';
      yield serializers.serialize(
        object.expectedBuildNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.pipeline != null) {
      yield r'pipeline';
      yield serializers.serialize(
        object.pipeline,
        specifiedType: const FullType(String),
      );
    }
    if (object.queuedTime != null) {
      yield r'queuedTime';
      yield serializers.serialize(
        object.queuedTime,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueItemImpl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueItemImplBuilder result,
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
        case r'expectedBuildNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.expectedBuildNumber = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'pipeline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pipeline = valueDes;
          break;
        case r'queuedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.queuedTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueItemImpl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueItemImplBuilder();
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

