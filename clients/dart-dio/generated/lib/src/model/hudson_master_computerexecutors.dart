//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/free_style_build.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hudson_master_computerexecutors.g.dart';

/// HudsonMasterComputerexecutors
///
/// Properties:
/// * [currentExecutable] 
/// * [idle] 
/// * [likelyStuck] 
/// * [number] 
/// * [progress] 
/// * [class_] 
@BuiltValue()
abstract class HudsonMasterComputerexecutors implements Built<HudsonMasterComputerexecutors, HudsonMasterComputerexecutorsBuilder> {
  @BuiltValueField(wireName: r'currentExecutable')
  FreeStyleBuild? get currentExecutable;

  @BuiltValueField(wireName: r'idle')
  bool? get idle;

  @BuiltValueField(wireName: r'likelyStuck')
  bool? get likelyStuck;

  @BuiltValueField(wireName: r'number')
  int? get number;

  @BuiltValueField(wireName: r'progress')
  int? get progress;

  @BuiltValueField(wireName: r'_class')
  String? get class_;

  HudsonMasterComputerexecutors._();

  factory HudsonMasterComputerexecutors([void updates(HudsonMasterComputerexecutorsBuilder b)]) = _$HudsonMasterComputerexecutors;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HudsonMasterComputerexecutorsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HudsonMasterComputerexecutors> get serializer => _$HudsonMasterComputerexecutorsSerializer();
}

class _$HudsonMasterComputerexecutorsSerializer implements PrimitiveSerializer<HudsonMasterComputerexecutors> {
  @override
  final Iterable<Type> types = const [HudsonMasterComputerexecutors, _$HudsonMasterComputerexecutors];

  @override
  final String wireName = r'HudsonMasterComputerexecutors';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HudsonMasterComputerexecutors object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentExecutable != null) {
      yield r'currentExecutable';
      yield serializers.serialize(
        object.currentExecutable,
        specifiedType: const FullType(FreeStyleBuild),
      );
    }
    if (object.idle != null) {
      yield r'idle';
      yield serializers.serialize(
        object.idle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.likelyStuck != null) {
      yield r'likelyStuck';
      yield serializers.serialize(
        object.likelyStuck,
        specifiedType: const FullType(bool),
      );
    }
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(int),
      );
    }
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType(int),
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
    HudsonMasterComputerexecutors object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HudsonMasterComputerexecutorsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currentExecutable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FreeStyleBuild),
          ) as FreeStyleBuild;
          result.currentExecutable.replace(valueDes);
          break;
        case r'idle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.idle = valueDes;
          break;
        case r'likelyStuck':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.likelyStuck = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
          break;
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.progress = valueDes;
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
  HudsonMasterComputerexecutors deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HudsonMasterComputerexecutorsBuilder();
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

