//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'empty_change_log_set.g.dart';

/// EmptyChangeLogSet
///
/// Properties:
/// * [class_] 
/// * [kind] 
@BuiltValue()
abstract class EmptyChangeLogSet implements Built<EmptyChangeLogSet, EmptyChangeLogSetBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  EmptyChangeLogSet._();

  factory EmptyChangeLogSet([void updates(EmptyChangeLogSetBuilder b)]) = _$EmptyChangeLogSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmptyChangeLogSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmptyChangeLogSet> get serializer => _$EmptyChangeLogSetSerializer();
}

class _$EmptyChangeLogSetSerializer implements PrimitiveSerializer<EmptyChangeLogSet> {
  @override
  final Iterable<Type> types = const [EmptyChangeLogSet, _$EmptyChangeLogSet];

  @override
  final String wireName = r'EmptyChangeLogSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmptyChangeLogSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmptyChangeLogSet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmptyChangeLogSetBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmptyChangeLogSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmptyChangeLogSetBuilder();
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

