//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disk_space_monitor_descriptor_disk_space.g.dart';

/// DiskSpaceMonitorDescriptorDiskSpace
///
/// Properties:
/// * [class_] 
/// * [timestamp] 
/// * [path] 
/// * [size] 
@BuiltValue()
abstract class DiskSpaceMonitorDescriptorDiskSpace implements Built<DiskSpaceMonitorDescriptorDiskSpace, DiskSpaceMonitorDescriptorDiskSpaceBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'size')
  int? get size;

  DiskSpaceMonitorDescriptorDiskSpace._();

  factory DiskSpaceMonitorDescriptorDiskSpace([void updates(DiskSpaceMonitorDescriptorDiskSpaceBuilder b)]) = _$DiskSpaceMonitorDescriptorDiskSpace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiskSpaceMonitorDescriptorDiskSpaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiskSpaceMonitorDescriptorDiskSpace> get serializer => _$DiskSpaceMonitorDescriptorDiskSpaceSerializer();
}

class _$DiskSpaceMonitorDescriptorDiskSpaceSerializer implements PrimitiveSerializer<DiskSpaceMonitorDescriptorDiskSpace> {
  @override
  final Iterable<Type> types = const [DiskSpaceMonitorDescriptorDiskSpace, _$DiskSpaceMonitorDescriptorDiskSpace];

  @override
  final String wireName = r'DiskSpaceMonitorDescriptorDiskSpace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiskSpaceMonitorDescriptorDiskSpace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
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
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DiskSpaceMonitorDescriptorDiskSpace object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiskSpaceMonitorDescriptorDiskSpaceBuilder result,
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
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiskSpaceMonitorDescriptorDiskSpace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskSpaceMonitorDescriptorDiskSpaceBuilder();
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

