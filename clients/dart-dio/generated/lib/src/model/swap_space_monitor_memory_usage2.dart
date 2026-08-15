//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'swap_space_monitor_memory_usage2.g.dart';

/// SwapSpaceMonitorMemoryUsage2
///
/// Properties:
/// * [class_] 
/// * [availablePhysicalMemory] 
/// * [availableSwapSpace] 
/// * [totalPhysicalMemory] 
/// * [totalSwapSpace] 
@BuiltValue()
abstract class SwapSpaceMonitorMemoryUsage2 implements Built<SwapSpaceMonitorMemoryUsage2, SwapSpaceMonitorMemoryUsage2Builder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'availablePhysicalMemory')
  int? get availablePhysicalMemory;

  @BuiltValueField(wireName: r'availableSwapSpace')
  int? get availableSwapSpace;

  @BuiltValueField(wireName: r'totalPhysicalMemory')
  int? get totalPhysicalMemory;

  @BuiltValueField(wireName: r'totalSwapSpace')
  int? get totalSwapSpace;

  SwapSpaceMonitorMemoryUsage2._();

  factory SwapSpaceMonitorMemoryUsage2([void updates(SwapSpaceMonitorMemoryUsage2Builder b)]) = _$SwapSpaceMonitorMemoryUsage2;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SwapSpaceMonitorMemoryUsage2Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SwapSpaceMonitorMemoryUsage2> get serializer => _$SwapSpaceMonitorMemoryUsage2Serializer();
}

class _$SwapSpaceMonitorMemoryUsage2Serializer implements PrimitiveSerializer<SwapSpaceMonitorMemoryUsage2> {
  @override
  final Iterable<Type> types = const [SwapSpaceMonitorMemoryUsage2, _$SwapSpaceMonitorMemoryUsage2];

  @override
  final String wireName = r'SwapSpaceMonitorMemoryUsage2';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SwapSpaceMonitorMemoryUsage2 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.availablePhysicalMemory != null) {
      yield r'availablePhysicalMemory';
      yield serializers.serialize(
        object.availablePhysicalMemory,
        specifiedType: const FullType(int),
      );
    }
    if (object.availableSwapSpace != null) {
      yield r'availableSwapSpace';
      yield serializers.serialize(
        object.availableSwapSpace,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPhysicalMemory != null) {
      yield r'totalPhysicalMemory';
      yield serializers.serialize(
        object.totalPhysicalMemory,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalSwapSpace != null) {
      yield r'totalSwapSpace';
      yield serializers.serialize(
        object.totalSwapSpace,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SwapSpaceMonitorMemoryUsage2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SwapSpaceMonitorMemoryUsage2Builder result,
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
        case r'availablePhysicalMemory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.availablePhysicalMemory = valueDes;
          break;
        case r'availableSwapSpace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.availableSwapSpace = valueDes;
          break;
        case r'totalPhysicalMemory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalPhysicalMemory = valueDes;
          break;
        case r'totalSwapSpace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalSwapSpace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SwapSpaceMonitorMemoryUsage2 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SwapSpaceMonitorMemoryUsage2Builder();
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

