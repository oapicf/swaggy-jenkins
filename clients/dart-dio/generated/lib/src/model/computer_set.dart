//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/hudson_master_computer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'computer_set.g.dart';

/// ComputerSet
///
/// Properties:
/// * [class_] 
/// * [busyExecutors] 
/// * [computer] 
/// * [displayName] 
/// * [totalExecutors] 
@BuiltValue()
abstract class ComputerSet implements Built<ComputerSet, ComputerSetBuilder> {
  @BuiltValueField(wireName: r'_class')
  String? get class_;

  @BuiltValueField(wireName: r'busyExecutors')
  int? get busyExecutors;

  @BuiltValueField(wireName: r'computer')
  BuiltList<HudsonMasterComputer>? get computer;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'totalExecutors')
  int? get totalExecutors;

  ComputerSet._();

  factory ComputerSet([void updates(ComputerSetBuilder b)]) = _$ComputerSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComputerSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComputerSet> get serializer => _$ComputerSetSerializer();
}

class _$ComputerSetSerializer implements PrimitiveSerializer<ComputerSet> {
  @override
  final Iterable<Type> types = const [ComputerSet, _$ComputerSet];

  @override
  final String wireName = r'ComputerSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComputerSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.class_ != null) {
      yield r'_class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType(String),
      );
    }
    if (object.busyExecutors != null) {
      yield r'busyExecutors';
      yield serializers.serialize(
        object.busyExecutors,
        specifiedType: const FullType(int),
      );
    }
    if (object.computer != null) {
      yield r'computer';
      yield serializers.serialize(
        object.computer,
        specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputer)]),
      );
    }
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalExecutors != null) {
      yield r'totalExecutors';
      yield serializers.serialize(
        object.totalExecutors,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComputerSet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComputerSetBuilder result,
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
        case r'busyExecutors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.busyExecutors = valueDes;
          break;
        case r'computer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HudsonMasterComputer)]),
          ) as BuiltList<HudsonMasterComputer>;
          result.computer.replace(valueDes);
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'totalExecutors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalExecutors = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComputerSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComputerSetBuilder();
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

