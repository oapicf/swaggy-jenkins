//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_implpermissions.g.dart';

/// BranchImplpermissions
///
/// Properties:
/// * [create] 
/// * [read] 
/// * [start] 
/// * [stop] 
/// * [class_] 
@BuiltValue()
abstract class BranchImplpermissions implements Built<BranchImplpermissions, BranchImplpermissionsBuilder> {
  @BuiltValueField(wireName: r'create')
  bool? get create;

  @BuiltValueField(wireName: r'read')
  bool? get read;

  @BuiltValueField(wireName: r'start')
  bool? get start;

  @BuiltValueField(wireName: r'stop')
  bool? get stop;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  BranchImplpermissions._();

  factory BranchImplpermissions([void updates(BranchImplpermissionsBuilder b)]) = _$BranchImplpermissions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BranchImplpermissionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BranchImplpermissions> get serializer => _$BranchImplpermissionsSerializer();
}

class _$BranchImplpermissionsSerializer implements PrimitiveSerializer<BranchImplpermissions> {
  @override
  final Iterable<Type> types = const [BranchImplpermissions, _$BranchImplpermissions];

  @override
  final String wireName = r'BranchImplpermissions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BranchImplpermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.create != null) {
      yield r'create';
      yield serializers.serialize(
        object.create,
        specifiedType: const FullType(bool),
      );
    }
    if (object.read != null) {
      yield r'read';
      yield serializers.serialize(
        object.read,
        specifiedType: const FullType(bool),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(bool),
      );
    }
    if (object.stop != null) {
      yield r'stop';
      yield serializers.serialize(
        object.stop,
        specifiedType: const FullType(bool),
      );
    }
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BranchImplpermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BranchImplpermissionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'create':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.create = valueDes;
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.read = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.start = valueDes;
          break;
        case r'stop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.stop = valueDes;
          break;
        case r'_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.class_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BranchImplpermissions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BranchImplpermissionsBuilder();
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

