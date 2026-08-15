//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_repositorypermissions.g.dart';

/// GithubRepositorypermissions
///
/// Properties:
/// * [admin] 
/// * [push] 
/// * [pull] 
/// * [class_] 
@BuiltValue()
abstract class GithubRepositorypermissions implements Built<GithubRepositorypermissions, GithubRepositorypermissionsBuilder> {
  @BuiltValueField(wireName: r'admin')
  bool? get admin;

  @BuiltValueField(wireName: r'push')
  bool? get push;

  @BuiltValueField(wireName: r'pull')
  bool? get pull;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  GithubRepositorypermissions._();

  factory GithubRepositorypermissions([void updates(GithubRepositorypermissionsBuilder b)]) = _$GithubRepositorypermissions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GithubRepositorypermissionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GithubRepositorypermissions> get serializer => _$GithubRepositorypermissionsSerializer();
}

class _$GithubRepositorypermissionsSerializer implements PrimitiveSerializer<GithubRepositorypermissions> {
  @override
  final Iterable<Type> types = const [GithubRepositorypermissions, _$GithubRepositorypermissions];

  @override
  final String wireName = r'GithubRepositorypermissions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GithubRepositorypermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.admin != null) {
      yield r'admin';
      yield serializers.serialize(
        object.admin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.push != null) {
      yield r'push';
      yield serializers.serialize(
        object.push,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pull != null) {
      yield r'pull';
      yield serializers.serialize(
        object.pull,
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
    GithubRepositorypermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GithubRepositorypermissionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.admin = valueDes;
          break;
        case r'push':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.push = valueDes;
          break;
        case r'pull':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.pull = valueDes;
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
  GithubRepositorypermissions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GithubRepositorypermissionsBuilder();
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

